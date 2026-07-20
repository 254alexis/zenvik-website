<?php
/**
 * Zenvik Navigation Restructure Hook
 * 
 * Modifies the Client Area navigation to:
 * 1. Rename "Workspace" to "Dashboard"
 * 2. Create "Your Profile" section for account pages
 * 3. Simplify the header user dropdown
 */

if (!defined("WHMCS")) {
    die("This file cannot be accessed directly");
}

add_hook('ClientAreaPageHeadOutput', 1, function($vars) {
    global $smarty;
    
    // Access the current page information
    $pageTitle = isset($vars['pageTitle']) ? $vars['pageTitle'] : '';
    $templateFile = isset($vars['template']) ? $vars['template'] : '';
    
    // For debugging - log what pages are being modified
    // These operations modify the global sidebar/navbar that will be rendered
});

add_hook('ClientAreaPage', 1, function($vars) {
    global $smarty;
    
    // Get current page to understand context
    $page = isset($vars['page']) ? $vars['page'] : '';
    
    try {
        // Get the sidebar from Smarty
        $sidebar = $smarty->getTemplateVars('sidebar');
        $navbar = $smarty->getTemplateVars('navbar');
        
        if (empty($sidebar)) {
            return;
        }
        
        /**
         * Step 1: Rename "Workspace" to "Dashboard"
         * The Workspace item is the default home page link
         */
        foreach ($sidebar as $sidebarItem) {
            if (method_exists($sidebarItem, 'getName') && 
                method_exists($sidebarItem, 'setLabel') &&
                $sidebarItem->getName() === 'Workspace') {
                $sidebarItem->setLabel('Dashboard');
            }
        }
        
        /**
         * Step 2: Create "Your Profile" section
         * This groups account-related pages into a collapsible section
         * 
         * Pages to include:
         * - Account Details
         * - User Management  
         * - Contacts
         * - Security/Account Security
         * - Email History
         * - Change Password
         * - Two-Factor Authentication (if exists)
         */
        
        // Collect account-related page names to identify
        $accountPagePatterns = array(
            'Account' => array('Account', 'Details'),
            'Users' => array('Users', 'Management'),
            'Contacts' => array('Contacts'),
            'Security' => array('Security', 'Account'),
            'Emails' => array('Email', 'History'),
            'Password' => array('Change', 'Password'),
            'TwoFactor' => array('Two', 'Factor'),
        );
        
        // Find announcements position for insertion
        $announcementsKey = null;
        foreach ($sidebar as $key => $sidebarItem) {
            if (method_exists($sidebarItem, 'getName') && 
                $sidebarItem->getName() === 'Announcements') {
                $announcementsKey = $key;
                break;
            }
        }
        
        // If we found announcements, add "Your Profile" section after it
        if ($announcementsKey !== null) {
            try {
                // Create a new sidebar section for "Your Profile"
                $profileSection = new \WHMCS\View\Menu\Item('YourProfile');
                $profileSection->setLabel('Your Profile');
                $profileSection->setIcon('fas fa-user');
                $profileSection->setExtra('collapsed', true);
                $profileSection->setExtra('mobileSelect', true);
                
                // Add account-related pages as children
                // Profile Overview
                $profileOverview = new \WHMCS\View\Menu\Item('ProfileOverview');
                $profileOverview->setLabel('Profile Overview');
                $profileOverview->setUri('user/profile');
                $profileOverview->setIcon('fas fa-user-circle');
                $profileSection->addChild('ProfileOverview', $profileOverview);
                
                // Account Details
                $accountDetails = new \WHMCS\View\Menu\Item('AccountDetails');
                $accountDetails->setLabel('Account Details');
                $accountDetails->setUri('clientarea.php?action=details');
                $accountDetails->setIcon('fas fa-address-card');
                $profileSection->addChild('AccountDetails', $accountDetails);
                
                // User Management
                $userManagement = new \WHMCS\View\Menu\Item('UserManagement');
                $userManagement->setLabel('User Management');
                $userManagement->setUri(routePath('account-users'));
                $userManagement->setIcon('fas fa-users-cog');
                $profileSection->addChild('UserManagement', $userManagement);
                
                // Contacts
                $contacts = new \WHMCS\View\Menu\Item('Contacts');
                $contacts->setLabel('Contacts');
                $contacts->setUri(routePath('account-contacts'));
                $contacts->setIcon('fas fa-address-book');
                $profileSection->addChild('Contacts', $contacts);
                
                // Account Security
                $accountSecurity = new \WHMCS\View\Menu\Item('AccountSecurity');
                $accountSecurity->setLabel('Account Security');
                $accountSecurity->setUri('user/security');
                $accountSecurity->setIcon('fas fa-shield-alt');
                $profileSection->addChild('AccountSecurity', $accountSecurity);
                
                // Email History
                $emailHistory = new \WHMCS\View\Menu\Item('EmailHistory');
                $emailHistory->setLabel('Email History');
                $emailHistory->setUri('clientarea.php?action=emails');
                $emailHistory->setIcon('fas fa-envelope-open-text');
                $profileSection->addChild('EmailHistory', $emailHistory);
                
                // Change Password
                $changePassword = new \WHMCS\View\Menu\Item('ChangePassword');
                $changePassword->setLabel('Change Password');
                $changePassword->setUri('user/password');
                $changePassword->setIcon('fas fa-key');
                $profileSection->addChild('ChangePassword', $changePassword);
                
                // Security Settings
                $securitySettings = new \WHMCS\View\Menu\Item('SecuritySettings');
                $securitySettings->setLabel('Security Settings');
                $securitySettings->setUri('user/security');
                $securitySettings->setIcon('fas fa-mobile-alt');
                $profileSection->addChild('SecuritySettings', $securitySettings);
                
                // Add "Your Profile" section to sidebar after announcements
                $newSidebar = new \ArrayObject();
                $inserted = false;
                
                foreach ($sidebar as $key => $sidebarItem) {
                    $newSidebar[$key] = $sidebarItem;
                    
                    if (!$inserted && method_exists($sidebarItem, 'getName') && 
                        $sidebarItem->getName() === 'Announcements') {
                        $newSidebar['YourProfile'] = $profileSection;
                        $inserted = true;
                    }
                }
                
                // Add System Status if it wasn't already included
                foreach ($sidebar as $sidebarItem) {
                    if (method_exists($sidebarItem, 'getName') && 
                        $sidebarItem->getName() === 'System Status' &&
                        !isset($newSidebar['System Status'])) {
                        $newSidebar['System Status'] = $sidebarItem;
                    }
                }
                
                $smarty->assign('sidebar', $newSidebar);
                
            } catch (\Exception $e) {
                // If menu item creation fails, continue without modifying sidebar
                // This ensures WHMCS continues to function even if the hook fails
            }
        }
        
        /**
         * Step 3: Simplify the header navbar dropdown
         * Keep only "Your Profile" and "Logout"
         */
        if (!empty($navbar)) {
            try {
                foreach ($navbar as $navItem) {
                    // Look for dropdown menu with account links
                    if (method_exists($navItem, 'hasChildren') && $navItem->hasChildren()) {
                        $children = $navItem->getChildren();
                        $newChildren = array();
                        $hasProfileLink = false;
                        
                        foreach ($children as $childKey => $childItem) {
                            if (!method_exists($childItem, 'getLabel')) {
                                continue;
                            }
                            
                            $label = $childItem->getLabel();
                            
                            // Keep logout button
                            if (stripos($label, 'logout') !== false || 
                                stripos($label, 'sign out') !== false ||
                                stripos($label, 'log out') !== false) {
                                $newChildren[$childKey] = $childItem;
                            }
                            // Create "Your Profile" link pointing to Account Details
                            elseif (!$hasProfileLink) {
                                $profileLink = clone $childItem;
                                $profileLink->setLabel('Your Profile');
                                $profileLink->setUri('clientarea.php?action=details');
                                if (method_exists($profileLink, 'setIcon')) {
                                    $profileLink->setIcon('fas fa-user');
                                }
                                $newChildren['YourProfile'] = $profileLink;
                                $hasProfileLink = true;
                            }
                        }
                        
                        // Replace children if we found items
                        if (!empty($newChildren)) {
                            if (method_exists($navItem, 'clearChildren')) {
                                $navItem->clearChildren();
                            }
                            
                            foreach ($newChildren as $childKey => $childItem) {
                                $navItem->addChild($childKey, $childItem);
                            }
                        }
                    }
                }
                
                $smarty->assign('navbar', $navbar);
                
            } catch (\Exception $e) {
                // If navbar modification fails, continue
                // This ensures the site functions even if dropdown modification fails
            }
        }
        
    } catch (\Exception $e) {
        // Fail silently to ensure WHMCS functionality is never broken
        // The site will display with default navigation if hook fails
    }
});
