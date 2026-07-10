<?php

use WHMCS\Database\Capsule;
use WHMCS\View\Menu\Item as MenuItem;

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

if (!function_exists('getSupportPinFieldId')) {
    function getSupportPinFieldId(): ?int
    {
        $field = Capsule::table('tblcustomfields')
            ->where('type', 'client')
            ->where('fieldname', 'Support PIN')
            ->first(['id']);

        if (!$field) {
            $field = Capsule::table('tblcustomfields')
                ->where('id', 2)
                ->where('type', 'client')
                ->first(['id']);
        }

        return $field ? (int) $field->id : null;
    }
}

if (!function_exists('supportPinExists')) {
    function supportPinExists($pin, $fieldId): bool
    {
        return Capsule::table('tblcustomfieldsvalues')
            ->where('fieldid', (int) $fieldId)
            ->where('value', (string) $pin)
            ->exists();
    }
}

if (!function_exists('generateUniqueSupportPin')) {
    function generateUniqueSupportPin($fieldId): ?string
    {
        for ($attempt = 0; $attempt < 100; $attempt++) {
            $pin = (string) random_int(100000, 999999);

            if (!supportPinExists($pin, (int) $fieldId)) {
                return $pin;
            }
        }

        return null;
    }
}

if (!function_exists('getClientSupportPin')) {
    function getClientSupportPin($clientId, $fieldId): ?string
    {
        $row = Capsule::table('tblcustomfieldsvalues')
            ->where('fieldid', (int) $fieldId)
            ->where('relid', (int) $clientId)
            ->where('value', '!=', '')
            ->first(['value']);

        if (!$row) {
            return null;
        }

        $pin = trim((string) $row->value);

        return $pin !== '' ? $pin : null;
    }
}

if (!function_exists('ensureClientSupportPin')) {
    function ensureClientSupportPin($clientId): ?string
    {
        $clientId = (int) $clientId;

        if ($clientId <= 0) {
            return null;
        }

        $fieldId = getSupportPinFieldId();

        if (!$fieldId) {
            return null;
        }

        $existingPin = getClientSupportPin($clientId, $fieldId);

        if ($existingPin !== null) {
            return $existingPin;
        }

        $pin = generateUniqueSupportPin($fieldId);

        if ($pin === null) {
            return null;
        }

        $existingRow = Capsule::table('tblcustomfieldsvalues')
            ->where('fieldid', $fieldId)
            ->where('relid', $clientId)
            ->first(['id', 'value']);

        if ($existingRow) {
            $currentValue = trim((string) $existingRow->value);

            if ($currentValue !== '') {
                return $currentValue;
            }

            Capsule::table('tblcustomfieldsvalues')
                ->where('id', (int) $existingRow->id)
                ->update(['value' => $pin]);

            return $pin;
        }

        Capsule::table('tblcustomfieldsvalues')->insert([
            'fieldid' => $fieldId,
            'relid' => $clientId,
            'value' => $pin,
        ]);

        return $pin;
    }
}

if (!function_exists('zenvikSupportPinClientId')) {
    function zenvikSupportPinClientId(array $vars = []): int
    {
        foreach (['userid', 'uid', 'id'] as $key) {
            if (!empty($vars[$key])) {
                return (int) $vars[$key];
            }
        }

        if (!empty($_SESSION['uid'])) {
            return (int) $_SESSION['uid'];
        }

        return 0;
    }
}

add_hook('ClientAdd', 1, function (array $vars): void {
    $clientId = zenvikSupportPinClientId($vars);

    if ($clientId <= 0) {
        return;
    }

    try {
        ensureClientSupportPin($clientId);
    } catch (Throwable $e) {
        logActivity('Zenvik Support PIN generation failed for new client ID ' . $clientId . ': ' . $e->getMessage());
    }
});

add_hook('ClientLogin', 1, function (array $vars): void {
    $clientId = zenvikSupportPinClientId($vars);

    if ($clientId <= 0) {
        return;
    }

    try {
        ensureClientSupportPin($clientId);
    } catch (Throwable $e) {
        logActivity('Zenvik Support PIN generation failed during login for client ID ' . $clientId . ': ' . $e->getMessage());
    }
});

add_hook('ClientAreaPage', 1, function (array $vars): array {
    $clientId = zenvikSupportPinClientId($vars);

    if ($clientId <= 0) {
        return [];
    }

    try {
        $pin = ensureClientSupportPin($clientId);

        return [
            'ztSupportPin' => $pin ?? '',
        ];
    } catch (Throwable $e) {
        logActivity('Zenvik Support PIN generation failed during client area load for client ID ' . $clientId . ': ' . $e->getMessage());
    }

    return [];
});

add_hook('ClientAreaPrimarySidebar', 1, function (MenuItem $primarySidebar): void {
    $clientId = zenvikSupportPinClientId();

    if ($clientId <= 0 || $primarySidebar->getChild('zenvik-support-pin')) {
        return;
    }

    try {
        $pin = ensureClientSupportPin($clientId);
    } catch (Throwable $e) {
        logActivity('Zenvik Support PIN sidebar failed for client ID ' . $clientId . ': ' . $e->getMessage());
        return;
    }

    if ($pin === null) {
        return;
    }

    $escapedPin = htmlspecialchars($pin, ENT_QUOTES, 'UTF-8');

    $primarySidebar->addChild('zenvik-support-pin')
        ->setLabel('Support PIN')
        ->setOrder(1)
        ->setBodyHtml(
            '<div style="padding: 8px 0 10px; font-size: 2rem; font-weight: 800; line-height: 1.1; text-align: center; letter-spacing: 0.08em;">'
            . $escapedPin
            . '</div>'
        );
});
