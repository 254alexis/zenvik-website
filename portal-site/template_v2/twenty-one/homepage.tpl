{if !$loggedin}
    <div class="zt-guest-home">
    {literal}
    <style id="zt-homepage-critical-css">
        .zt-guest-home,
        .zt-guest-home * {
            box-sizing: border-box;
        }

        .zt-guest-home {
            overflow: hidden;
            background: #f8fafc;
            color: #0f172a;
            font-family: "Open Sans", Arial, sans-serif;
        }

        .zt-guest-home section {
            position: relative;
        }

        .zt-portal-hero {
            overflow: hidden;
            margin: 0 0 30px;
            border-radius: 0 0 28px 28px;
            background:
                radial-gradient(circle at 13% 18%, rgba(223, 164, 8, 0.25), transparent 30%),
                radial-gradient(circle at 78% 16%, rgba(255, 255, 255, 0.18), transparent 28%),
                linear-gradient(135deg, #043a7e 0%, #043a7e 47%, #0f172a 100%);
            color: #ffffff;
            box-shadow: 0 22px 52px rgba(4, 58, 126, 0.22);
        }

        .zt-portal-hero__bg {
            position: absolute;
            inset: 0;
            pointer-events: none;
        }

        .zt-portal-hero__inner {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: minmax(0, 52fr) minmax(320px, 48fr);
            gap: 34px;
            align-items: center;
            min-height: 430px;
            padding: 42px 54px 22px;
        }

        .zt-portal-hero__content {
            max-width: 620px;
        }

        .zt-portal-hero__eyebrow {
            display: inline-flex;
            align-items: center;
            margin-bottom: 14px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            border-radius: 999px;
            padding: 8px 13px;
            background: rgba(255, 255, 255, 0.08);
            color: rgba(255, 255, 255, 0.9);
            font-size: 0.84rem;
            font-weight: 800;
        }

        .zt-portal-hero__title {
            max-width: 600px;
            margin: 0;
            color: #ffffff;
            font-size: clamp(2.35rem, 3.6vw, 3.55rem);
            font-weight: 900;
            line-height: 1.08;
            letter-spacing: 0;
        }

        .zt-portal-hero__copy {
            max-width: 570px;
            margin-top: 18px;
            color: rgba(255, 255, 255, 0.86);
            font-size: clamp(0.98rem, 1.15vw, 1.08rem);
            line-height: 1.62;
        }

        .zt-portal-hero__copy p {
            margin-bottom: 0;
        }

        .zt-portal-hero__actions {
            display: flex;
            flex-wrap: wrap;
            gap: 14px;
            margin-top: 26px;
        }

        .zt-portal-hero__button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-height: 50px;
            border-radius: 999px;
            padding: 0.9rem 1.55rem;
            font-size: 0.96rem;
            font-weight: 800;
            line-height: 1;
            text-align: center;
            text-decoration: none;
            transition: transform 0.22s ease, box-shadow 0.22s ease;
        }

        .zt-portal-hero__button:hover,
        .zt-portal-hero__button:focus {
            text-decoration: none;
            transform: translateY(-2px);
        }

        .zt-portal-hero__button--primary {
            border: 1px solid #dfa408;
            background: #dfa408;
            color: #043a7e;
            box-shadow: 0 18px 38px rgba(223, 164, 8, 0.3);
        }

        .zt-portal-hero__button--secondary {
            border: 1px solid rgba(255, 255, 255, 0.42);
            background: rgba(255, 255, 255, 0.1);
            color: #ffffff;
        }

        .zt-portal-hero__visual {
            position: relative;
            min-height: 320px;
        }

        .zt-portal-device {
            position: relative;
            max-width: 360px;
            margin-left: auto;
            border: 10px solid rgba(15, 23, 42, 0.9);
            border-radius: 26px;
            padding: 12px;
            background: rgba(255, 255, 255, 0.94);
            box-shadow: 0 28px 58px rgba(1, 22, 48, 0.3);
        }

        .zt-portal-card {
            border-radius: 18px;
            padding: 12px;
            background: #ffffff;
            color: #0f172a;
        }

        .zt-portal-float {
            display: none;
        }

        .zt-portal-hero__trust {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 1px;
            margin: 0 54px 26px;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.16);
            border-radius: 16px;
            background: rgba(255, 255, 255, 0.08);
            color: rgba(255, 255, 255, 0.82);
            font-size: 0.78rem;
            font-weight: 850;
        }

        .zt-portal-hero__trust span {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-height: 44px;
            padding: 10px 12px;
        }

        .zt-guest-home h1,
        .zt-guest-home h2,
        .zt-guest-home h3,
        .zt-guest-home p,
        .zt-guest-home figure,
        .zt-guest-home blockquote {
            margin-top: 0;
        }

        .zt-section-kicker,
        .zt-network-center__kicker {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 12px;
            color: #7a6200;
            font-size: 0.76rem;
            font-weight: 900;
            letter-spacing: 0.14em;
            text-transform: uppercase;
        }

        .zt-section-kicker::before {
            content: "";
            display: inline-block;
            width: 32px;
            height: 2px;
            border-radius: 999px;
            background: #dfa408;
        }

        .zt-control-network,
        .zt-launch-section,
        .zt-review-panel,
        .zt-faq-panel {
            padding: 76px 56px;
            background:
                radial-gradient(circle at 4% 8%, rgba(4, 58, 126, 0.055), transparent 32%),
                radial-gradient(circle at 96% 12%, rgba(223, 164, 8, 0.055), transparent 30%),
                #ffffff;
        }

        .zt-launch-section {
            background:
                radial-gradient(circle at 0% 0%, rgba(255, 255, 255, 0.95), transparent 34%),
                radial-gradient(circle at 100% 6%, rgba(255, 255, 255, 0.9), transparent 34%),
                radial-gradient(circle at 50% 42%, rgba(4, 58, 126, 0.08), transparent 36%),
                linear-gradient(180deg, #f8fbff 0%, #f8fafc 54%, #ffffff 100%);
        }

        .zt-control-header,
        .zt-launch-header,
        .zt-support-heading,
        .zt-resource-command__heading,
        .zt-faq-heading {
            max-width: 820px;
            margin: 0 auto 34px;
            text-align: center;
        }

        .zt-control-header h2,
        .zt-launch-header h2,
        .zt-support-heading h2,
        .zt-resource-command__heading h2,
        .zt-faq-heading h2 {
            margin: 0;
            color: #0f172a;
            font-size: clamp(2rem, 3.35vw, 3rem);
            font-weight: 900;
            line-height: 1.08;
            letter-spacing: 0;
        }

        .zt-control-header p,
        .zt-launch-header p {
            max-width: 620px;
            margin: 15px auto 0;
            color: rgba(15, 23, 42, 0.68);
            font-size: 1rem;
            line-height: 1.7;
        }

        .zt-network-lines,
        .zt-launch-lines {
            display: none;
        }

        .zt-network-stage,
        .zt-launch-path {
            display: grid;
            max-width: 1120px;
            margin: 0 auto;
            gap: 18px;
        }

        .zt-network-stage {
            grid-template-columns: repeat(4, minmax(0, 1fr));
            align-items: stretch;
        }

        .zt-network-center {
            grid-column: 1 / -1;
            display: flex;
            min-height: 210px;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 28px;
            padding: 28px;
            background:
                radial-gradient(circle at 50% 0%, rgba(4, 58, 126, 0.1), transparent 55%),
                rgba(255, 255, 255, 0.9);
            box-shadow: 0 24px 64px rgba(4, 58, 126, 0.12);
            text-align: center;
        }

        .zt-network-center__orb {
            display: inline-flex;
            width: 58px;
            height: 58px;
            margin-bottom: 13px;
            border: 1px solid rgba(223, 164, 8, 0.42);
            border-radius: 20px;
            background:
                radial-gradient(circle at 50% 50%, #dfa408 0 18%, transparent 19%),
                linear-gradient(145deg, #043a7e, #0f172a);
            box-shadow: 0 18px 42px rgba(4, 58, 126, 0.22);
        }

        .zt-network-center strong {
            display: block;
            margin-top: 7px;
            color: #043a7e;
            font-size: 1.45rem;
            font-weight: 900;
            line-height: 1.12;
        }

        .zt-network-center > span:not(.zt-network-center__orb):not(.zt-network-center__kicker) {
            display: block;
            max-width: 540px;
            margin-top: 10px;
            color: rgba(15, 23, 42, 0.66);
            font-size: 0.95rem;
            line-height: 1.55;
        }

        .zt-network-center__status {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 7px;
            margin-top: 16px;
        }

        .zt-network-center__status span {
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 999px;
            padding: 6px 9px;
            background: rgba(255, 255, 255, 0.72);
            color: rgba(15, 23, 42, 0.64);
            font-size: 0.68rem;
            font-weight: 850;
        }

        .zt-network-node,
        .zt-launch-step {
            position: relative;
            display: grid;
            min-height: 168px;
            grid-template-columns: 48px minmax(0, 1fr);
            gap: 12px;
            align-items: start;
            border: 1px solid rgba(4, 58, 126, 0.12);
            border-radius: 24px;
            padding: 18px;
            background: rgba(255, 255, 255, 0.94);
            color: #0f172a;
            text-decoration: none;
            box-shadow: 0 18px 46px rgba(4, 58, 126, 0.1);
            transition: transform 0.22s ease, border-color 0.22s ease, box-shadow 0.22s ease;
        }

        .zt-network-node:hover,
        .zt-network-node:focus,
        .zt-launch-step:hover,
        .zt-launch-step:focus {
            border-color: rgba(223, 164, 8, 0.58);
            color: #0f172a;
            text-decoration: none;
            transform: translateY(-4px);
            box-shadow: 0 24px 54px rgba(4, 58, 126, 0.16);
        }

        .zt-node-icon,
        .zt-launch-step__icon {
            display: inline-flex;
            width: 48px;
            height: 48px;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(223, 164, 8, 0.34);
            border-radius: 18px;
            background: rgba(4, 58, 126, 0.06);
            color: #043a7e;
            font-size: 1.15rem;
        }

        .zt-node-title,
        .zt-launch-step strong {
            display: block;
            color: #043a7e;
            font-size: 0.98rem;
            font-weight: 900;
            line-height: 1.25;
        }

        .zt-node-text,
        .zt-launch-step > span:last-child {
            grid-column: 1 / -1;
            color: rgba(15, 23, 42, 0.62);
            font-size: 0.84rem;
            font-weight: 700;
            line-height: 1.55;
        }

        .zt-node-text span,
        .zt-node-assist {
            display: block;
        }

        .zt-node-assist {
            grid-column: 1 / -1;
            margin-top: 4px;
            color: #7a6200;
            font-size: 0.76rem;
            font-weight: 850;
        }

        .zt-launch-path {
            grid-template-columns: repeat(4, minmax(0, 1fr));
        }

        .zt-launch-step__count {
            position: absolute;
            top: 14px;
            right: 16px;
            color: rgba(4, 58, 126, 0.22);
            font-size: 0.78rem;
            font-weight: 950;
        }

        .zt-launch-divider {
            max-width: 780px;
            height: 1px;
            margin: 44px auto 58px;
            background: linear-gradient(90deg, transparent, rgba(4, 58, 126, 0.18), rgba(223, 164, 8, 0.36), rgba(4, 58, 126, 0.18), transparent);
        }

        .zt-service-promo {
            display: grid;
            max-width: 1120px;
            margin: 0 auto;
            grid-template-columns: minmax(0, 0.92fr) minmax(320px, 1.08fr);
            gap: 36px;
            align-items: center;
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 30px;
            padding: 38px;
            background: rgba(255, 255, 255, 0.88);
            box-shadow: 0 24px 68px rgba(4, 58, 126, 0.1);
        }

        .zt-service-promo__content h2 {
            margin: 0;
            color: #0f172a;
            font-size: clamp(1.9rem, 3vw, 2.75rem);
            font-weight: 900;
            line-height: 1.08;
        }

        .zt-service-promo__content p {
            margin: 16px 0 0;
            color: rgba(15, 23, 42, 0.68);
            font-size: 1rem;
            line-height: 1.72;
        }

        .zt-service-promo__link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-top: 24px;
            border-radius: 999px;
            padding: 13px 18px;
            background: #043a7e;
            color: #ffffff;
            font-weight: 900;
            text-decoration: none;
            box-shadow: 0 16px 36px rgba(4, 58, 126, 0.2);
        }

        .zt-service-promo__link:hover,
        .zt-service-promo__link:focus {
            color: #ffffff;
            text-decoration: none;
        }

        .zt-service-chips {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-content: center;
            justify-content: center;
        }

        .zt-service-chip {
            display: inline-flex;
            align-items: center;
            gap: 9px;
            border: 1px solid rgba(4, 58, 126, 0.11);
            border-radius: 999px;
            padding: 12px 15px;
            background: #ffffff;
            color: #043a7e;
            font-size: 0.88rem;
            font-weight: 900;
            box-shadow: 0 16px 34px rgba(4, 58, 126, 0.1);
        }

        .zt-service-chip i {
            color: #dfa408;
            font-size: 1rem;
        }

        .zt-review-marquee,
        .zt-resource-ribbon {
            overflow: hidden;
            max-width: 1180px;
            margin: 0 auto;
        }

        .zt-review-track,
        .zt-resource-track {
            display: flex;
            width: max-content;
            will-change: transform;
        }

        .zt-review-track {
            gap: 16px;
            animation: zt-review-scroll 34s linear infinite;
        }

        .zt-review-marquee:hover .zt-review-track,
        .zt-resource-ribbon:hover .zt-resource-track {
            animation-play-state: paused;
        }

        .zt-review-card {
            width: 310px;
            flex: 0 0 310px;
            margin: 0;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 22px;
            padding: 18px;
            background: #ffffff;
            box-shadow: 0 16px 38px rgba(4, 58, 126, 0.08);
        }

        .zt-review-stars {
            display: block;
            color: #dfa408;
            font-size: 0.9rem;
            font-weight: 900;
            letter-spacing: 0.05em;
        }

        .zt-review-card blockquote {
            margin: 12px 0 0;
            color: rgba(15, 23, 42, 0.78);
            font-size: 0.92rem;
            font-weight: 750;
            line-height: 1.55;
        }

        .zt-review-card figcaption {
            margin-top: 14px;
            color: #7a6200;
            font-size: 0.78rem;
            font-weight: 900;
        }

        .zt-resource-command {
            overflow: hidden;
            padding: 76px 0;
            background:
                radial-gradient(circle at 18% 20%, rgba(255, 255, 255, 0.16), transparent 28%),
                radial-gradient(circle at 82% 65%, rgba(223, 164, 8, 0.12), transparent 34%),
                linear-gradient(145deg, #043a7e 0%, #043a7e 48%, #0f172a 100%);
            color: #ffffff;
        }

        .zt-resource-command__heading h2 {
            color: #ffffff;
        }

        .zt-resource-track {
            gap: 14px;
            animation: zt-resource-scroll 46s linear infinite;
        }

        .zt-resource-capsule {
            display: grid;
            width: 302px;
            min-height: 96px;
            flex: 0 0 302px;
            grid-template-columns: 44px minmax(0, 1fr);
            gap: 11px;
            align-items: center;
            border: 1px solid rgba(255, 255, 255, 0.18);
            border-radius: 999px;
            padding: 14px 17px;
            background: rgba(255, 255, 255, 0.09);
            color: #ffffff;
            text-decoration: none;
            box-shadow: 0 18px 40px rgba(1, 22, 48, 0.22);
        }

        .zt-resource-capsule:hover,
        .zt-resource-capsule:focus {
            color: #ffffff;
            text-decoration: none;
        }

        .zt-resource-capsule__icon {
            display: inline-flex;
            width: 44px;
            height: 44px;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(223, 164, 8, 0.34);
            border-radius: 50%;
            color: #dfa408;
            font-size: 1rem;
        }

        .zt-resource-capsule strong,
        .zt-resource-capsule > span:last-child {
            display: block;
        }

        .zt-resource-capsule strong {
            color: #ffffff;
            font-size: 0.93rem;
            font-weight: 900;
            line-height: 1.22;
        }

        .zt-resource-capsule > span:last-child {
            grid-column: 2;
            margin-top: -12px;
            color: rgba(255, 255, 255, 0.72);
            font-size: 0.76rem;
            font-weight: 720;
            line-height: 1.32;
        }

        .zt-faq-accordion {
            display: grid;
            gap: 12px;
            max-width: 860px;
            margin: 0 auto;
        }

        .zt-faq-item {
            overflow: hidden;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 20px;
            background: #ffffff;
            box-shadow: 0 14px 34px rgba(4, 58, 126, 0.08);
        }

        .zt-faq-button {
            display: flex;
            width: 100%;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            border: 0;
            padding: 20px 22px;
            background: #ffffff;
            color: #043a7e;
            font: inherit;
            font-size: 1rem;
            font-weight: 900;
            line-height: 1.35;
            text-align: left;
            cursor: pointer;
        }

        .zt-faq-button i {
            display: inline-flex;
            width: 30px;
            height: 30px;
            flex: 0 0 30px;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: rgba(4, 58, 126, 0.06);
            color: #dfa408;
            transition: transform 0.22s ease, background-color 0.22s ease, color 0.22s ease;
        }

        .zt-faq-button[aria-expanded="true"] i {
            background: #043a7e;
            color: #dfa408;
            transform: rotate(45deg);
        }

        .zt-faq-body {
            border-top: 1px solid rgba(4, 58, 126, 0.08);
            padding: 0 22px 20px;
            color: rgba(15, 23, 42, 0.68);
            font-size: 0.95rem;
            font-weight: 650;
            line-height: 1.7;
        }

        @keyframes zt-review-scroll {
            from { transform: translateX(0); }
            to { transform: translateX(calc(-50% - 40px)); }
        }

        @keyframes zt-resource-scroll {
            from { transform: translateX(0); }
            to { transform: translateX(calc(-50% - 84px)); }
        }

        @media (max-width: 991.98px) {
            .zt-portal-hero__inner {
                grid-template-columns: 1fr;
                min-height: 0;
                padding: 48px 32px 28px;
            }

            .zt-portal-hero__visual {
                display: none;
            }

            .zt-portal-hero__trust {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                margin: 0 32px 28px;
            }

            .zt-control-network,
            .zt-launch-section,
            .zt-review-panel,
            .zt-faq-panel {
                padding: 64px 32px;
            }

            .zt-network-stage,
            .zt-launch-path,
            .zt-service-promo {
                grid-template-columns: 1fr;
            }

            .zt-network-stage {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .zt-network-center {
                grid-column: 1 / -1;
            }

            .zt-service-promo {
                gap: 30px;
                padding: 32px;
            }
        }

        @media (max-width: 575.98px) {
            .zt-portal-hero {
                margin-right: 0;
                margin-left: 0;
                border-radius: 0 0 22px 22px;
            }

            .zt-portal-hero__inner {
                padding: 34px 20px 20px;
            }

            .zt-portal-hero__title {
                font-size: clamp(1.9rem, 8.4vw, 2.3rem);
                line-height: 1.1;
            }

            .zt-portal-hero__actions {
                flex-direction: column;
            }

            .zt-portal-hero__button {
                width: 100%;
            }

            .zt-portal-hero__trust {
                margin: 0 20px 24px;
                border-radius: 14px;
            }

            .zt-control-network,
            .zt-launch-section,
            .zt-review-panel,
            .zt-faq-panel {
                padding: 52px 20px;
            }

            .zt-control-header h2,
            .zt-launch-header h2,
            .zt-support-heading h2,
            .zt-resource-command__heading h2,
            .zt-faq-heading h2 {
                font-size: clamp(1.75rem, 8vw, 2.2rem);
            }

            .zt-network-stage,
            .zt-launch-path {
                grid-template-columns: 1fr;
            }

            .zt-network-node,
            .zt-launch-step {
                min-height: 0;
                border-radius: 20px;
                padding: 16px;
            }

            .zt-service-promo {
                border-radius: 24px;
                padding: 24px 18px;
            }

            .zt-service-chip {
                width: 100%;
                justify-content: flex-start;
                white-space: normal;
            }

            .zt-review-card {
                width: 258px;
                flex-basis: 258px;
            }

            .zt-resource-capsule {
                width: 262px;
                flex-basis: 262px;
            }
        }
    </style>
    {/literal}
    {assetExists file="custom.css"}
        <link href="{$__assetPath__}?v={$versionHash}-zt-homepage-polish" rel="stylesheet">
    {/assetExists}
    {literal}
    <style id="zt-homepage-hotfix-css">
        .zt-guest-home {
            position: relative;
            left: 50%;
            width: 100vw;
            max-width: 100vw;
            margin-left: -50vw;
            margin-right: 0;
            overflow: hidden;
            border-radius: 0;
        }

        .zt-portal-hero {
            margin: 0;
            border-radius: 0;
            background: #08358f;
        }

        .zt-portal-hero::before,
        .zt-portal-hero::after,
        .zt-portal-hero__bg {
            display: none;
        }

        .zt-portal-hero__inner {
            position: relative;
            z-index: 1;
            width: min(100%, 1320px);
            max-width: 1320px;
            min-height: 600px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: minmax(360px, 0.82fr) minmax(500px, 1.18fr);
            gap: clamp(28px, 4vw, 70px);
            align-items: center;
            padding: clamp(56px, 7vw, 88px) clamp(24px, 5vw, 72px) 34px;
        }

        .zt-portal-hero__visual {
            position: relative;
            display: flex;
            min-height: 430px;
            align-items: center;
            justify-content: flex-end;
        }

        .zt-portal-hero__visual::before,
        .zt-portal-hero__visual::after,
        .zt-portal-device,
        .zt-portal-float {
            display: none;
        }

        .zt-portal-illustration {
            position: relative;
            width: min(100%, 650px);
            min-height: 390px;
        }

        .zt-portal-illustration__glow {
            position: absolute;
            inset: 12% 4% 9% 8%;
            border-radius: 999px;
            background: radial-gradient(circle at 50% 50%, rgba(255, 255, 255, 0.2), transparent 64%);
            filter: blur(12px);
        }

        .zt-css-laptop {
            position: absolute;
            right: 2%;
            bottom: 38px;
            width: 78%;
            max-width: 520px;
            transform: perspective(900px) rotateY(-7deg) rotateX(3deg);
            transform-origin: center;
            filter: drop-shadow(0 30px 44px rgba(1, 22, 48, 0.34));
        }

        .zt-css-laptop__screen {
            position: relative;
            overflow: hidden;
            border: 10px solid rgba(8, 14, 26, 0.96);
            border-radius: 24px 24px 18px 18px;
            padding: 18px;
            background: linear-gradient(145deg, #ffffff, #edf4fb);
            box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.65);
        }

        .zt-css-laptop__top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            margin-bottom: 14px;
        }

        .zt-css-laptop__top strong {
            color: #0f172a;
            font-size: 1rem;
            font-weight: 900;
        }

        .zt-css-laptop__pill {
            border-radius: 999px;
            padding: 6px 10px;
            background: rgba(223, 164, 8, 0.16);
            color: #7a6200;
            font-size: 0.68rem;
            font-weight: 900;
        }

        .zt-css-dashboard {
            display: grid;
            grid-template-columns: 0.72fr 1fr;
            gap: 14px;
        }

        .zt-css-sidebar,
        .zt-css-panel,
        .zt-css-action {
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 16px;
            background: rgba(255, 255, 255, 0.84);
            box-shadow: 0 12px 24px rgba(4, 58, 126, 0.08);
        }

        .zt-css-sidebar {
            padding: 12px;
        }

        .zt-css-sidebar span,
        .zt-css-action span {
            display: block;
            height: 9px;
            margin-bottom: 10px;
            border-radius: 999px;
            background: rgba(4, 58, 126, 0.16);
        }

        .zt-css-sidebar span:first-child {
            width: 76%;
            background: #043a7e;
        }

        .zt-css-panel-grid {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 10px;
        }

        .zt-css-panel {
            min-height: 74px;
            padding: 12px;
        }

        .zt-css-panel em {
            display: block;
            color: rgba(15, 23, 42, 0.52);
            font-size: 0.62rem;
            font-style: normal;
            font-weight: 900;
            text-transform: uppercase;
        }

        .zt-css-panel strong {
            display: block;
            margin-top: 6px;
            color: #043a7e;
            font-size: 1.2rem;
            font-weight: 950;
        }

        .zt-css-chart {
            grid-column: 1 / -1;
            height: 92px;
            border-radius: 16px;
            background:
                linear-gradient(135deg, transparent 46%, rgba(223, 164, 8, 0.7) 47%, rgba(223, 164, 8, 0.7) 49%, transparent 50%),
                linear-gradient(rgba(4, 58, 126, 0.08) 1px, transparent 1px),
                #ffffff;
            background-size: auto, 100% 24px, auto;
            box-shadow: inset 0 0 0 1px rgba(4, 58, 126, 0.08);
        }

        .zt-css-laptop__base {
            width: 110%;
            height: 42px;
            margin: -2px 0 0 -5%;
            border-radius: 0 0 28px 28px;
            background: linear-gradient(180deg, #e5edf6, #aebdcd);
            transform: perspective(420px) rotateX(58deg);
            transform-origin: top;
        }

        .zt-css-orbit {
            position: absolute;
            display: grid;
            width: 86px;
            height: 86px;
            place-items: center;
            border: 1px solid rgba(255, 255, 255, 0.42);
            border-radius: 26px;
            background: linear-gradient(145deg, rgba(255, 255, 255, 0.96), rgba(230, 238, 248, 0.84));
            color: #dfa408;
            box-shadow: 0 20px 38px rgba(1, 22, 48, 0.22);
        }

        .zt-css-orbit i {
            color: #dfa408;
            font-size: 1.55rem;
        }

        .zt-css-orbit--cloud {
            left: 1%;
            top: 12%;
        }

        .zt-css-orbit--shield {
            left: 0;
            bottom: 18%;
            background: linear-gradient(145deg, #ffffff, #eef4fb);
            color: #043a7e;
        }

        .zt-css-orbit--domain {
            right: 0;
            top: 10%;
        }

        .zt-css-orbit--support {
            right: 4%;
            bottom: 4%;
        }

        .zt-portal-hero__trust {
            position: relative;
            z-index: 1;
            width: min(100% - 48px, 1210px);
            margin-right: auto;
            margin-left: auto;
            border-color: rgba(255, 255, 255, 0.22);
            background: rgba(4, 58, 126, 0.72);
            box-shadow: 0 18px 42px rgba(1, 22, 48, 0.18);
            backdrop-filter: blur(14px);
        }

        .zt-portal-hero {
            isolation: isolate;
            overflow: hidden;
            background:
                radial-gradient(circle at 18% 20%, rgba(223, 164, 8, 0.18), transparent 28%),
                radial-gradient(circle at 78% 22%, rgba(255, 255, 255, 0.18), transparent 30%),
                radial-gradient(circle at 82% 78%, rgba(6, 85, 160, 0.68), transparent 38%),
                linear-gradient(rgba(255, 255, 255, 0.034) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255, 255, 255, 0.03) 1px, transparent 1px),
                linear-gradient(138deg, #043a7e 0%, #064890 46%, #0f172a 100%);
            background-size: auto, auto, auto, 38px 38px, 38px 38px, auto;
        }

        .zt-portal-hero::before,
        .zt-portal-hero::after {
            content: "";
            position: absolute;
            display: block;
            pointer-events: none;
        }

        .zt-portal-hero::before {
            inset: 0;
            z-index: 0;
            background: linear-gradient(115deg, transparent 0%, rgba(255, 255, 255, 0.08) 48%, transparent 78%);
            opacity: 0;
            transform: translateX(-130%);
            animation: zt-hero-light-sweep 9s ease-in-out infinite;
        }

        .zt-portal-hero::after {
            inset: 0;
            z-index: 0;
            background:
                radial-gradient(circle at 18% 26%, rgba(255, 255, 255, 0.2) 0 1px, transparent 2px),
                radial-gradient(circle at 74% 18%, rgba(223, 164, 8, 0.26) 0 1px, transparent 2px),
                radial-gradient(circle at 84% 70%, rgba(255, 255, 255, 0.16) 0 1px, transparent 2px);
            background-size: 124px 124px, 166px 166px, 144px 144px;
            opacity: 0.38;
            animation: zt-hero-particle-drift 22s linear infinite;
        }

        .zt-portal-hero__bg {
            display: block;
            z-index: 0;
            overflow: hidden;
        }

        .zt-portal-hero__bg::before,
        .zt-portal-hero__bg::after {
            content: "";
            position: absolute;
            pointer-events: none;
        }

        .zt-portal-hero__bg::before {
            top: 18%;
            right: -8%;
            width: 58%;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.18), rgba(223, 164, 8, 0.16), transparent);
            transform: rotate(-8deg);
        }

        .zt-portal-hero__bg::after {
            right: 4%;
            bottom: 17%;
            width: 38%;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.14), transparent);
            transform: rotate(12deg);
        }

        .zt-portal-hero__glow {
            position: absolute;
            display: block;
            border-radius: 999px;
            filter: blur(18px);
            opacity: 0.55;
            animation: zt-hero-glow-breathe 8s ease-in-out infinite;
        }

        .zt-portal-hero__glow--one {
            top: 8%;
            left: 5%;
            width: 320px;
            height: 320px;
            background: rgba(223, 164, 8, 0.18);
        }

        .zt-portal-hero__glow--two {
            right: 10%;
            bottom: 10%;
            width: 420px;
            height: 420px;
            background: rgba(255, 255, 255, 0.13);
            animation-delay: -3s;
        }

        .zt-portal-hero__node {
            position: absolute;
            display: block;
            width: 8px;
            height: 8px;
            border: 1px solid rgba(223, 164, 8, 0.5);
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.42);
            box-shadow: 0 0 22px rgba(223, 164, 8, 0.22);
        }

        .zt-portal-hero__node--one { top: 22%; left: 48%; }
        .zt-portal-hero__node--two { top: 36%; right: 10%; }
        .zt-portal-hero__node--three { right: 24%; bottom: 18%; }
        .zt-portal-hero__node--four { left: 38%; bottom: 28%; }

        .zt-portal-hero__inner {
            grid-template-columns: minmax(360px, 0.95fr) minmax(420px, 0.78fr);
            gap: clamp(34px, 5vw, 82px);
            min-height: clamp(560px, 62vw, 680px);
            padding-top: clamp(62px, 7vw, 96px);
        }

        .zt-portal-hero__content {
            max-width: 650px;
        }

        .zt-portal-hero__eyebrow {
            margin-bottom: 18px;
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.14);
            backdrop-filter: blur(12px);
        }

        .zt-portal-hero__title {
            max-width: 650px;
            font-size: clamp(2.65rem, 4.7vw, 4.55rem);
            line-height: 1.02;
        }

        .zt-portal-hero__copy {
            max-width: 600px;
            margin-top: 22px;
            color: rgba(255, 255, 255, 0.82);
            font-size: clamp(1rem, 1.2vw, 1.12rem);
            line-height: 1.74;
        }

        .zt-portal-hero__actions {
            align-items: center;
            gap: 14px;
            margin-top: 30px;
        }

        .zt-portal-hero__button {
            min-width: 154px;
            min-height: 52px;
            font-weight: 900;
        }

        .zt-portal-hero__button--primary:hover,
        .zt-portal-hero__button--primary:focus {
            color: #043a7e;
            box-shadow: 0 24px 48px rgba(223, 164, 8, 0.34);
        }

        .zt-portal-hero__button--secondary {
            border-color: rgba(255, 255, 255, 0.44);
            background: rgba(255, 255, 255, 0.08);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(12px);
        }

        .zt-portal-hero__button--secondary:hover,
        .zt-portal-hero__button--secondary:focus {
            color: #ffffff;
            box-shadow: 0 20px 42px rgba(1, 22, 48, 0.16);
        }

        .zt-portal-hero__link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            min-height: 44px;
            padding: 0 4px;
            color: rgba(255, 255, 255, 0.76);
            font-size: 0.88rem;
            font-weight: 850;
            text-decoration: none;
            transition: color 0.22s ease, transform 0.22s ease;
        }

        .zt-portal-hero__link::after {
            content: "\2192";
            color: #dfa408;
            font-weight: 950;
            transition: transform 0.22s ease;
        }

        .zt-portal-hero__link:hover,
        .zt-portal-hero__link:focus {
            color: #ffffff;
            text-decoration: none;
            transform: translateY(-1px);
        }

        .zt-portal-hero__link:hover::after,
        .zt-portal-hero__link:focus::after {
            transform: translateX(3px);
        }

        .zt-portal-hero__visual {
            min-height: 470px;
            justify-content: center;
        }

        .zt-portal-illustration {
            width: min(100%, 620px);
            min-height: 470px;
            transform: translateX(2%);
        }

        .zt-portal-illustration__glow {
            inset: 8% 0 8% 2%;
            border-radius: 45% 55% 48% 52%;
            background:
                radial-gradient(circle at 52% 46%, rgba(255, 255, 255, 0.22), transparent 48%),
                radial-gradient(circle at 58% 52%, rgba(223, 164, 8, 0.14), transparent 62%);
            filter: blur(16px);
            animation: zt-hero-glow-breathe 7s ease-in-out infinite;
        }

        .zt-portal-geometry,
        .zt-portal-reflection,
        .zt-portal-particle,
        .zt-ui-fragment,
        .zt-workspace-fragment {
            position: absolute;
            pointer-events: none;
        }

        .zt-portal-geometry {
            border: 1px solid rgba(255, 255, 255, 0.12);
            background: rgba(255, 255, 255, 0.04);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.09);
            backdrop-filter: blur(8px);
        }

        .zt-portal-geometry--one {
            top: 7%;
            right: 10%;
            width: 190px;
            height: 116px;
            border-radius: 28px;
            transform: rotate(-7deg);
        }

        .zt-portal-geometry--two {
            left: 5%;
            bottom: 20%;
            width: 164px;
            height: 164px;
            border-radius: 42px;
            transform: rotate(11deg);
        }

        .zt-portal-geometry--three {
            right: 6%;
            bottom: 8%;
            width: 88px;
            height: 88px;
            border-radius: 26px;
            opacity: 0.68;
            transform: rotate(18deg);
        }

        .zt-portal-workspace {
            position: absolute;
            inset: 0;
            transform: perspective(1100px) rotateY(-8deg) rotateX(3deg);
            transform-origin: center;
        }

        .zt-workspace-fragment {
            display: grid;
            min-width: 168px;
            min-height: 92px;
            grid-template-columns: 42px minmax(0, 1fr);
            gap: 12px;
            align-items: center;
            border: 1px solid rgba(255, 255, 255, 0.18);
            border-radius: 24px;
            padding: 16px;
            background: linear-gradient(145deg, rgba(255, 255, 255, 0.16), rgba(255, 255, 255, 0.07));
            color: #ffffff;
            box-shadow:
                0 24px 54px rgba(1, 22, 48, 0.24),
                inset 0 1px 0 rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(14px);
            animation: zt-hero-fragment-float 8s ease-in-out infinite;
        }

        .zt-workspace-fragment i {
            display: inline-grid;
            width: 42px;
            height: 42px;
            place-items: center;
            border: 1px solid rgba(223, 164, 8, 0.36);
            border-radius: 16px;
            background: rgba(255, 255, 255, 0.08);
            color: #dfa408;
            font-size: 1rem;
        }

        .zt-workspace-fragment em,
        .zt-workspace-fragment strong,
        .zt-workspace-fragment span {
            display: block;
            font-style: normal;
            line-height: 1.15;
        }

        .zt-workspace-fragment em {
            color: rgba(255, 255, 255, 0.58);
            font-size: 0.66rem;
            font-weight: 900;
            letter-spacing: 0.08em;
            text-transform: uppercase;
        }

        .zt-workspace-fragment strong {
            margin-top: 6px;
            color: #ffffff;
            font-size: 1.08rem;
            font-weight: 950;
        }

        .zt-workspace-fragment span {
            margin-top: 5px;
            color: rgba(255, 255, 255, 0.62);
            font-size: 0.74rem;
            font-weight: 760;
        }

        .zt-workspace-fragment--overview {
            top: 13%;
            left: 18%;
            width: 246px;
        }

        .zt-workspace-fragment--invoice {
            top: 30%;
            right: 4%;
            width: 208px;
            animation-delay: -2.4s;
        }

        .zt-workspace-fragment--tickets {
            top: 48%;
            left: 4%;
            width: 218px;
            animation-delay: -4s;
        }

        .zt-workspace-fragment--security {
            right: 17%;
            bottom: 13%;
            width: 230px;
            animation-delay: -5.5s;
        }

        .zt-ui-fragment {
            display: flex;
            align-items: center;
            gap: 9px;
            border: 1px solid rgba(255, 255, 255, 0.16);
            border-radius: 999px;
            padding: 10px 13px;
            background: rgba(255, 255, 255, 0.1);
            color: rgba(255, 255, 255, 0.78);
            font-size: 0.72rem;
            font-weight: 900;
            box-shadow: 0 14px 30px rgba(1, 22, 48, 0.18);
            backdrop-filter: blur(12px);
            animation: zt-hero-fragment-drift 9s ease-in-out infinite;
        }

        .zt-ui-fragment::before {
            content: "";
            width: 8px;
            height: 8px;
            border-radius: 999px;
            background: #dfa408;
            box-shadow: 0 0 16px rgba(223, 164, 8, 0.55);
        }

        .zt-ui-fragment--notifications {
            top: 3%;
            left: 4%;
        }

        .zt-ui-fragment--status {
            right: 0;
            top: 52%;
            animation-delay: -3s;
        }

        .zt-ui-fragment--care {
            left: 32%;
            bottom: 4%;
            animation-delay: -6s;
        }

        .zt-portal-reflection {
            right: 8%;
            bottom: 23%;
            width: 78%;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.28), rgba(223, 164, 8, 0.16), transparent);
            transform: rotate(-8deg);
        }

        .zt-portal-particle {
            width: 6px;
            height: 6px;
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.58);
            box-shadow: 0 0 16px rgba(255, 255, 255, 0.28);
            animation: zt-hero-particle-float 12s ease-in-out infinite;
        }

        .zt-portal-particle--one { top: 19%; right: 2%; }
        .zt-portal-particle--two { top: 37%; left: 13%; animation-delay: -4s; }
        .zt-portal-particle--three { right: 34%; bottom: 8%; animation-delay: -7s; }

        .zt-css-laptop,
        .zt-css-orbit {
            display: none;
        }

        .zt-portal-hero__trust {
            background: rgba(255, 255, 255, 0.08);
            animation: zt-hero-trust-rise 0.8s ease both;
        }

        .zt-portal-hero__trust span {
            min-height: 48px;
            border-right: 1px solid rgba(255, 255, 255, 0.1);
            color: rgba(255, 255, 255, 0.82);
            transition: background-color 0.22s ease, color 0.22s ease;
        }

        .zt-portal-hero__trust span:last-child {
            border-right: 0;
        }

        .zt-portal-hero__trust span:hover {
            background: rgba(255, 255, 255, 0.07);
            color: #ffffff;
        }

        .zt-portal-hero__trust i {
            color: #dfa408;
        }

        @keyframes zt-hero-light-sweep {
            0%, 48% { opacity: 0; transform: translateX(-130%); }
            58% { opacity: 1; }
            84%, 100% { opacity: 0; transform: translateX(260%); }
        }

        @keyframes zt-hero-particle-drift {
            from { background-position: 0 0, 0 0, 0 0; }
            to { background-position: 124px 124px, -166px 166px, 144px -144px; }
        }

        @keyframes zt-hero-glow-breathe {
            0%, 100% { opacity: 0.48; transform: scale(0.98); }
            50% { opacity: 0.72; transform: scale(1.04); }
        }

        @keyframes zt-hero-fragment-float {
            0%, 100% { transform: translate3d(0, 0, 0); }
            50% { transform: translate3d(0, -10px, 0); }
        }

        @keyframes zt-hero-fragment-drift {
            0%, 100% { transform: translate3d(0, 0, 0); }
            50% { transform: translate3d(6px, -8px, 0); }
        }

        @keyframes zt-hero-particle-float {
            0%, 100% { opacity: 0.28; transform: translate3d(0, 0, 0); }
            50% { opacity: 0.74; transform: translate3d(10px, -14px, 0); }
        }

        @keyframes zt-hero-trust-rise {
            from { opacity: 0; transform: translateY(14px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media (prefers-reduced-motion: reduce) {
            .zt-portal-hero::before,
            .zt-portal-hero::after,
            .zt-portal-illustration__glow,
            .zt-workspace-fragment,
            .zt-ui-fragment,
            .zt-portal-particle {
                animation-duration: 90s;
            }
        }

        .zt-launch-path {
            min-height: 0;
            align-items: start;
        }

        .zt-launch-lines {
            display: none;
        }

        .zt-launch-path {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 18px;
            max-width: 1120px;
            margin-right: auto;
            margin-left: auto;
        }

        .zt-network-node,
        .zt-launch-step {
            position: relative;
            inset: auto;
            height: auto;
            align-self: start;
            transform: none;
        }

        .zt-control-network {
            padding-bottom: clamp(92px, 9vw, 132px);
            border-bottom: 1px solid rgba(4, 58, 126, 0.08);
            background:
                radial-gradient(circle at 0% 4%, rgba(4, 58, 126, 0.075), transparent 30%),
                radial-gradient(circle at 96% 12%, rgba(223, 164, 8, 0.08), transparent 28%),
                linear-gradient(180deg, #ffffff 0%, #f8fbff 76%, #ffffff 100%);
        }

        .zt-control-network::after {
            content: "";
            position: absolute;
            right: 0;
            bottom: -1px;
            left: 0;
            height: 72px;
            pointer-events: none;
            background: linear-gradient(180deg, transparent, #ffffff);
        }

        .zt-network-stage {
            display: grid;
            grid-template-columns: minmax(220px, 1fr) minmax(280px, 360px) minmax(220px, 1fr);
            grid-template-rows: repeat(2, minmax(154px, auto));
            gap: 26px 34px;
            align-items: center;
            max-width: 1180px;
            min-height: 0;
            margin: 0 auto;
            padding: 28px 0 0;
        }

        .zt-network-lines {
            display: block;
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            opacity: 0.72;
            pointer-events: none;
        }

        .zt-network-line {
            stroke-dasharray: 16 12;
            animation: zt-network-flow-line 4.8s linear infinite;
        }

        .zt-network-pulse {
            filter: drop-shadow(0 0 10px rgba(223, 164, 8, 0.66));
        }

        .zt-network-center {
            grid-column: 2;
            grid-row: 1 / span 2;
            position: relative;
            inset: auto;
            display: grid;
            width: 100%;
            min-height: 342px;
            place-items: center;
            border: 0;
            border-radius: 34px;
            padding: 0;
            background: transparent;
            box-shadow: none;
            transform: none;
            animation: none;
        }

        .zt-network-center::before {
            content: "";
            position: absolute;
            inset: 34px 16px;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 999px;
            background:
                radial-gradient(circle at 50% 50%, rgba(223, 164, 8, 0.13), transparent 22%),
                radial-gradient(circle at 50% 50%, rgba(4, 58, 126, 0.09), transparent 64%);
            box-shadow: inset 0 0 80px rgba(4, 58, 126, 0.06);
        }

        .zt-network-center::after {
            content: "";
            position: absolute;
            inset: 72px 54px;
            border: 1px dashed rgba(4, 58, 126, 0.16);
            border-radius: 999px;
            animation: zt-network-orbit-spin 18s linear infinite;
        }

        .zt-network-center > :not(.zt-network-visual) {
            display: none;
        }

        .zt-network-visual {
            position: relative;
            z-index: 2;
            width: min(100%, 300px);
            min-height: 260px;
            display: grid;
            place-items: center;
        }

        .zt-network-visual__core {
            position: relative;
            width: 178px;
            height: 178px;
            border: 1px solid rgba(255, 255, 255, 0.82);
            border-radius: 34px;
            background:
                radial-gradient(circle at 80% 18%, rgba(223, 164, 8, 0.16), transparent 32%),
                linear-gradient(145deg, rgba(255, 255, 255, 0.98), rgba(239, 246, 255, 0.92));
            box-shadow:
                inset 0 1px 0 rgba(255, 255, 255, 0.96),
                0 28px 70px rgba(4, 58, 126, 0.18);
        }

        .zt-network-visual__screen {
            position: absolute;
            inset: 18px;
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 22px;
            padding: 14px;
            background: #ffffff;
            box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.78);
        }

        .zt-network-visual__bar,
        .zt-network-visual__tile,
        .zt-network-visual__rail {
            display: block;
            border-radius: 999px;
        }

        .zt-network-visual__bar {
            width: 68%;
            height: 9px;
            background: #043a7e;
        }

        .zt-network-visual__tile {
            float: left;
            width: calc(50% - 5px);
            height: 42px;
            margin-top: 13px;
            background: rgba(4, 58, 126, 0.08);
        }

        .zt-network-visual__tile + .zt-network-visual__tile {
            margin-left: 10px;
            background: rgba(223, 164, 8, 0.18);
        }

        .zt-network-visual__rail {
            clear: both;
            width: 100%;
            height: 9px;
            margin-top: 68px;
            background: linear-gradient(90deg, #043a7e 0 58%, rgba(4, 58, 126, 0.1) 58%);
        }

        .zt-network-visual__badge {
            position: absolute;
            display: grid;
            width: 54px;
            height: 54px;
            place-items: center;
            border: 1px solid rgba(255, 255, 255, 0.78);
            border-radius: 18px;
            background: #ffffff;
            color: #dfa408;
            box-shadow: 0 18px 42px rgba(4, 58, 126, 0.14);
            animation: zt-network-badge-float 4.8s ease-in-out infinite;
        }

        .zt-network-visual__badge i {
            color: #dfa408;
            font-size: 1.05rem;
        }

        .zt-network-visual__badge--one {
            top: 6px;
            left: 8px;
        }

        .zt-network-visual__badge--two {
            top: 6px;
            right: 8px;
            animation-delay: 0.7s;
        }

        .zt-network-visual__badge--three {
            right: 14px;
            bottom: 4px;
            animation-delay: 1.2s;
        }

        .zt-network-visual__badge--four {
            bottom: 4px;
            left: 14px;
            animation-delay: 1.8s;
        }

        .zt-network-node {
            width: 100%;
            min-height: 154px;
            grid-template-columns: 54px minmax(0, 1fr);
            gap: 14px;
            border-color: rgba(4, 58, 126, 0.12);
            border-radius: 24px;
            padding: 20px;
            background:
                radial-gradient(circle at 92% 12%, rgba(223, 164, 8, 0.12), transparent 30%),
                rgba(255, 255, 255, 0.96);
            box-shadow:
                inset 0 1px 0 rgba(255, 255, 255, 0.92),
                0 20px 46px rgba(4, 58, 126, 0.11);
            opacity: 1;
            animation: none;
        }

        .zt-network-node--hosting {
            grid-column: 1;
            grid-row: 1;
            animation-delay: 0.05s;
        }

        .zt-network-node--billing {
            grid-column: 3;
            grid-row: 1;
            animation-delay: 0.16s;
        }

        .zt-network-node--support {
            grid-column: 1;
            grid-row: 2;
            animation-delay: 0.27s;
        }

        .zt-network-node--account {
            grid-column: 3;
            grid-row: 2;
            animation-delay: 0.38s;
        }

        .zt-network-node:hover,
        .zt-network-node:focus {
            border-color: rgba(223, 164, 8, 0.56);
            transform: translateY(-5px);
        }

        .zt-network-node,
        .zt-network-node--hosting,
        .zt-network-node--billing,
        .zt-network-node--support,
        .zt-network-node--account {
            opacity: 1;
            transform: none;
        }

        .zt-node-icon {
            width: 54px;
            height: 54px;
            border-radius: 18px;
            background:
                radial-gradient(circle at 50% 0%, rgba(223, 164, 8, 0.18), transparent 58%),
                #f8fafc;
        }

        .zt-node-title {
            align-self: center;
            font-size: 1.02rem;
        }

        .zt-node-meta {
            display: inline-flex;
            grid-column: 1 / -1;
            width: max-content;
            max-width: 100%;
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 999px;
            padding: 6px 10px;
            background: rgba(4, 58, 126, 0.045);
            color: #043a7e;
            font-size: 0.68rem;
            font-weight: 900;
            text-transform: uppercase;
        }

        .zt-node-text {
            font-size: 0.86rem;
            line-height: 1.5;
        }

        .zt-node-assist {
            position: static;
            grid-column: 1 / -1;
            border: 0;
            padding: 0;
            background: transparent;
            opacity: 0.82;
            transform: none;
        }

        .zt-control-network {
            overflow: hidden;
            padding-top: clamp(78px, 8vw, 116px);
            padding-bottom: clamp(92px, 9vw, 132px);
            background:
                radial-gradient(circle at 8% 4%, rgba(4, 58, 126, 0.035), transparent 28%),
                radial-gradient(circle at 94% 12%, rgba(223, 164, 8, 0.045), transparent 30%),
                #ffffff;
        }

        .zt-pcb-board {
            position: relative;
            max-width: 1180px;
            min-height: 560px;
            margin: 0 auto;
            padding: clamp(28px, 4vw, 48px);
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 28px;
            background:
                linear-gradient(rgba(4, 58, 126, 0.022) 1px, transparent 1px),
                linear-gradient(90deg, rgba(4, 58, 126, 0.022) 1px, transparent 1px),
                radial-gradient(circle at 18% 24%, rgba(4, 58, 126, 0.035), transparent 28%),
                radial-gradient(circle at 84% 76%, rgba(223, 164, 8, 0.04), transparent 30%),
                #ffffff;
            background-size: 38px 38px, 38px 38px, auto, auto, auto;
            box-shadow:
                inset 0 1px 0 rgba(255, 255, 255, 0.92),
                0 28px 72px rgba(4, 58, 126, 0.08);
        }

        .zt-pcb-board::before,
        .zt-pcb-board::after {
            content: "";
            position: absolute;
            pointer-events: none;
            opacity: 0.45;
        }

        .zt-pcb-board::before {
            inset: 22px;
            border: 1px solid rgba(4, 58, 126, 0.045);
            border-radius: 22px;
        }

        .zt-pcb-board::after {
            right: 42px;
            bottom: 38px;
            width: 122px;
            height: 84px;
            border: 1px solid rgba(4, 58, 126, 0.055);
            border-radius: 18px;
            background:
                repeating-linear-gradient(90deg, rgba(4, 58, 126, 0.09) 0 2px, transparent 2px 11px),
                rgba(255, 255, 255, 0.42);
        }

        .zt-pcb-traces {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            opacity: 0.38;
            pointer-events: none;
            animation: zt-pcb-trace-wake 1.15s ease both;
        }

        .zt-pcb-trace {
            fill: none;
            stroke: rgba(4, 58, 126, 0.13);
            stroke-width: 2;
            stroke-linecap: round;
            stroke-linejoin: round;
        }

        .zt-pcb-pad {
            fill: rgba(223, 164, 8, 0.16);
            stroke: rgba(122, 98, 0, 0.12);
            stroke-width: 1;
        }

        .zt-pcb-modules {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: repeat(12, minmax(0, 1fr));
            gap: clamp(18px, 2.4vw, 30px);
            align-items: start;
        }

        .zt-pcb-module {
            position: relative;
            display: block;
            min-height: 196px;
            overflow: hidden;
            border: 1px solid rgba(4, 58, 126, 0.13);
            border-radius: 20px;
            background: #ffffff;
            color: #0f172a;
            text-decoration: none;
            box-shadow:
                0 18px 42px rgba(4, 58, 126, 0.1),
                inset 0 0 0 1px rgba(255, 255, 255, 0.84);
            clip-path: polygon(0 16px, 16px 0, calc(100% - 16px) 0, 100% 16px, 100% calc(100% - 16px), calc(100% - 16px) 100%, 16px 100%, 0 calc(100% - 16px));
            opacity: 1;
            transform: translateY(0);
            animation: zt-pcb-module-in 0.52s ease both;
            transition: transform 0.22s ease, border-color 0.22s ease, box-shadow 0.22s ease;
        }

        .zt-pcb-module:hover,
        .zt-pcb-module:focus {
            color: #0f172a;
            text-decoration: none;
            border-color: rgba(223, 164, 8, 0.55);
            transform: translateY(-4px);
            box-shadow:
                0 24px 54px rgba(4, 58, 126, 0.15),
                0 0 0 1px rgba(223, 164, 8, 0.18);
        }

        .zt-pcb-module::before,
        .zt-pcb-module::after {
            content: "";
            position: absolute;
            pointer-events: none;
        }

        .zt-pcb-module::before {
            inset: 9px;
            border: 1px solid rgba(4, 58, 126, 0.055);
            border-radius: 14px;
            clip-path: polygon(0 13px, 13px 0, calc(100% - 13px) 0, 100% 13px, 100% calc(100% - 13px), calc(100% - 13px) 100%, 13px 100%, 0 calc(100% - 13px));
        }

        .zt-pcb-module::after {
            right: 16px;
            bottom: 16px;
            width: 46px;
            height: 26px;
            border-top: 2px solid rgba(4, 58, 126, 0.08);
            border-bottom: 2px solid rgba(4, 58, 126, 0.08);
        }

        .zt-pcb-module__header {
            position: relative;
            display: flex;
            min-height: 68px;
            align-items: center;
            justify-content: space-between;
            gap: 14px;
            padding: 16px 18px;
            background: #043a7e;
            color: #ffffff;
            transition: background 0.22s ease;
        }

        .zt-pcb-module:hover .zt-pcb-module__header,
        .zt-pcb-module:focus .zt-pcb-module__header {
            background: #0751a8;
        }

        .zt-pcb-module__title-wrap {
            display: inline-flex;
            min-width: 0;
            align-items: center;
            gap: 10px;
        }

        .zt-pcb-module__icon {
            display: inline-grid;
            width: 38px;
            height: 38px;
            flex: 0 0 auto;
            place-items: center;
            border: 1px solid rgba(255, 255, 255, 0.42);
            border-radius: 12px;
            color: #dfa408;
            font-size: 1rem;
        }

        .zt-pcb-module__title {
            display: block;
            overflow-wrap: anywhere;
            font-size: 0.98rem;
            font-weight: 900;
            line-height: 1.24;
        }

        .zt-pcb-module__code {
            display: inline-flex;
            flex: 0 0 auto;
            border: 1px solid rgba(255, 255, 255, 0.22);
            border-radius: 999px;
            padding: 5px 8px;
            color: rgba(255, 255, 255, 0.72);
            font-size: 0.62rem;
            font-weight: 900;
            letter-spacing: 0.08em;
        }

        .zt-pcb-module__body {
            position: relative;
            display: grid;
            gap: 10px;
            padding: 20px 20px 22px;
        }

        .zt-pcb-module__text {
            display: flex;
            align-items: center;
            gap: 10px;
            color: rgba(15, 23, 42, 0.72);
            font-size: 0.92rem;
            font-weight: 750;
            line-height: 1.45;
        }

        .zt-pcb-module__text::before {
            content: "";
            width: 7px;
            height: 7px;
            flex: 0 0 auto;
            border-radius: 999px;
            background: rgba(4, 58, 126, 0.18);
            box-shadow: 0 0 0 4px rgba(4, 58, 126, 0.035);
        }

        .zt-pcb-module__status {
            position: absolute;
            top: 88px;
            right: 20px;
            z-index: 2;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: rgba(4, 58, 126, 0.7);
            font-size: 0.66rem;
            font-weight: 850;
            letter-spacing: 0.02em;
            line-height: 1;
            opacity: 0.78;
            transition: color 0.28s ease, opacity 0.28s ease;
        }

        .zt-pcb-module__status-dot {
            width: 10px;
            height: 10px;
            flex: 0 0 auto;
            border-radius: 50%;
            background: #dfa408;
            box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 0 18px rgba(223, 164, 8, 0.42);
            animation: zt-pcb-status-pulse 3.6s ease-in-out infinite;
            transition: filter 0.28s ease, box-shadow 0.28s ease;
        }

        .zt-pcb-module:hover .zt-pcb-module__status,
        .zt-pcb-module:focus .zt-pcb-module__status {
            color: #043a7e;
            opacity: 1;
        }

        .zt-pcb-module:hover .zt-pcb-module__status-dot,
        .zt-pcb-module:focus .zt-pcb-module__status-dot {
            filter: brightness(1.12);
            box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.16), 0 0 22px rgba(223, 164, 8, 0.58);
        }

        .zt-pcb-module--hosting {
            grid-column: 1 / span 5;
            animation-delay: 0.05s;
        }

        .zt-pcb-module--billing {
            grid-column: 7 / span 5;
            margin-top: 26px;
            animation-delay: 0.16s;
        }

        .zt-pcb-module--support {
            grid-column: 2 / span 5;
            margin-top: 14px;
            animation-delay: 0.27s;
        }

        .zt-pcb-module--account {
            grid-column: 8 / span 5;
            margin-top: 54px;
            animation-delay: 0.38s;
        }

        @keyframes zt-pcb-module-in {
            from {
                opacity: 1;
                transform: translateY(10px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes zt-pcb-led-pulse {
            0% { box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 0 18px rgba(223, 164, 8, 0.42); }
            48% { box-shadow: 0 0 0 9px rgba(223, 164, 8, 0.2), 0 0 24px rgba(223, 164, 8, 0.64); }
            100% { box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 0 18px rgba(223, 164, 8, 0.42); }
        }

        @keyframes zt-workspace-status-pulse {
            0%, 100% {
                box-shadow: 0 0 0 5px rgba(4, 58, 126, 0.1), 0 0 18px rgba(4, 58, 126, 0.22);
                filter: brightness(1);
            }

            50% {
                box-shadow: 0 0 0 8px rgba(4, 58, 126, 0.07), 0 0 24px rgba(4, 58, 126, 0.32);
                filter: brightness(1.08);
            }
        }

        @keyframes zt-pcb-status-pulse {
            0%, 100% {
                box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 0 18px rgba(223, 164, 8, 0.42);
                filter: brightness(1);
            }

            50% {
                box-shadow: 0 0 0 7px rgba(223, 164, 8, 0.09), 0 0 22px rgba(223, 164, 8, 0.54);
                filter: brightness(1.1);
            }
        }

        @keyframes zt-pcb-trace-wake {
            from { opacity: 0.12; }
            to { opacity: 0.38; }
        }

        .zt-launch-section {
            padding-top: clamp(88px, 9vw, 128px);
        }

        @keyframes zt-network-flow-line {
            from { stroke-dashoffset: 0; }
            to { stroke-dashoffset: -112; }
        }

        @keyframes zt-network-orbit-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        @keyframes zt-network-badge-float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-8px); }
        }

        @keyframes zt-network-card-rise {
            from { opacity: 0; transform: translateY(16px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media (max-width: 991.98px) {
            .zt-portal-hero__inner {
                grid-template-columns: 1fr;
                min-height: 0;
                padding: 46px 24px 24px;
            }

            .zt-portal-hero__visual {
                min-height: 320px;
                justify-content: center;
            }

            .zt-portal-illustration {
                width: min(100%, 680px);
                min-height: 360px;
            }

            .zt-launch-path {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .zt-network-stage {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 18px;
            }

            .zt-network-lines {
                display: none;
            }

            .zt-network-center {
                grid-column: 1 / -1;
                grid-row: auto;
                min-height: 260px;
                order: -1;
            }

            .zt-network-node,
            .zt-network-node--hosting,
            .zt-network-node--billing,
            .zt-network-node--support,
            .zt-network-node--account {
                grid-column: auto;
                grid-row: auto;
            }

            .zt-pcb-board {
                min-height: 0;
                padding: 28px;
            }

            .zt-pcb-traces {
                opacity: 0.2;
            }

            .zt-pcb-modules {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 20px;
            }

            .zt-pcb-module,
            .zt-pcb-module--hosting,
            .zt-pcb-module--billing,
            .zt-pcb-module--support,
            .zt-pcb-module--account {
                grid-column: auto;
                margin-top: 0;
            }
        }

        @media (max-width: 575.98px) {
            .zt-portal-hero__inner {
                padding: 34px 18px 18px;
            }

            .zt-portal-hero__visual {
                display: none;
            }

            .zt-portal-illustration {
                width: min(112vw, 440px);
                min-height: 270px;
                margin-right: -6vw;
                margin-left: -6vw;
            }

            .zt-css-laptop {
                right: 6%;
                bottom: 26px;
                width: 84%;
            }

            .zt-css-laptop__screen {
                border-width: 7px;
                border-radius: 18px;
                padding: 10px;
            }

            .zt-css-laptop__top strong {
                font-size: 0.72rem;
            }

            .zt-css-laptop__pill,
            .zt-css-panel em {
                font-size: 0.52rem;
            }

            .zt-css-dashboard {
                gap: 8px;
            }

            .zt-css-panel-grid {
                gap: 7px;
            }

            .zt-css-panel {
                min-height: 52px;
                border-radius: 12px;
                padding: 8px;
            }

            .zt-css-panel strong {
                font-size: 0.86rem;
            }

            .zt-css-chart {
                height: 58px;
                border-radius: 12px;
            }

            .zt-css-orbit {
                width: 54px;
                height: 54px;
                border-radius: 18px;
            }

            .zt-css-orbit i {
                font-size: 1rem;
            }

            .zt-portal-hero__trust {
                width: calc(100% - 28px);
            }

            .zt-launch-path {
                grid-template-columns: 1fr;
            }

            .zt-network-stage {
                grid-template-columns: 1fr;
                padding-top: 18px;
            }

            .zt-network-center {
                min-height: 226px;
            }

            .zt-network-visual {
                min-height: 214px;
            }

            .zt-network-visual__core {
                width: 150px;
                height: 150px;
                border-radius: 28px;
            }

            .zt-network-visual__badge {
                width: 46px;
                height: 46px;
                border-radius: 16px;
            }

            .zt-network-node {
                min-height: 0;
            }

            .zt-pcb-board {
                padding: 16px;
                border-radius: 20px;
                background:
                    radial-gradient(circle at 0% 0%, rgba(4, 58, 126, 0.035), transparent 34%),
                    #ffffff;
                background-size: auto;
            }

            .zt-pcb-board::before,
            .zt-pcb-board::after,
            .zt-pcb-traces {
                display: none;
            }

            .zt-pcb-modules {
                grid-template-columns: 1fr;
                gap: 16px;
            }

            .zt-pcb-module {
                min-height: 0;
            }

            .zt-pcb-module__header {
                min-height: 64px;
                padding: 14px 15px;
            }

            .zt-pcb-module__code {
                display: none;
            }

            .zt-pcb-module__body {
                padding: 18px 17px 20px;
            }
        }

        @media (max-width: 991.98px) {
            .zt-portal-hero__inner {
                grid-template-columns: 1fr;
                width: min(100%, 860px);
                min-height: 0;
                gap: 28px;
                padding: 56px 24px 26px;
            }

            .zt-portal-hero__content {
                max-width: 720px;
            }

            .zt-portal-hero__title {
                max-width: 700px;
                font-size: clamp(2.35rem, 7vw, 3.8rem);
            }

            .zt-portal-hero__visual {
                display: flex;
                min-height: 360px;
                justify-content: center;
            }

            .zt-portal-illustration {
                width: min(100%, 640px);
                min-height: 350px;
                transform: none;
            }

            .zt-workspace-fragment--overview {
                left: 16%;
            }

            .zt-workspace-fragment--invoice {
                right: 8%;
            }
        }

        @media (max-width: 575.98px) {
            .zt-portal-hero::after,
            .zt-portal-hero__node,
            .zt-portal-geometry,
            .zt-ui-fragment,
            .zt-portal-reflection,
            .zt-portal-particle {
                display: none;
            }

            .zt-portal-hero__inner {
                padding: 38px 18px 18px;
            }

            .zt-portal-hero__title {
                font-size: clamp(2.12rem, 11vw, 2.9rem);
                line-height: 1.05;
            }

            .zt-portal-hero__copy {
                margin-top: 18px;
                font-size: 0.98rem;
                line-height: 1.68;
            }

            .zt-portal-hero__actions {
                display: grid;
                grid-template-columns: 1fr;
                gap: 12px;
            }

            .zt-portal-hero__button {
                width: 100%;
            }

            .zt-portal-hero__link {
                justify-content: center;
            }

            .zt-portal-hero__visual {
                display: flex;
                min-height: 326px;
                margin-top: 8px;
            }

            .zt-portal-illustration {
                width: min(100%, 340px);
                min-height: 318px;
                margin: 0 auto;
                transform: none;
            }

            .zt-portal-illustration__glow {
                inset: 4% 3% 7%;
                filter: blur(14px);
            }

            .zt-portal-workspace {
                transform: none;
            }

            .zt-workspace-fragment {
                grid-template-columns: 36px minmax(0, 1fr);
                gap: 10px;
                min-width: 0;
                min-height: 78px;
                border-radius: 20px;
                padding: 13px;
            }

            .zt-workspace-fragment i {
                width: 36px;
                height: 36px;
                border-radius: 14px;
                font-size: 0.9rem;
            }

            .zt-workspace-fragment em {
                font-size: 0.56rem;
            }

            .zt-workspace-fragment strong {
                font-size: 0.88rem;
            }

            .zt-workspace-fragment span {
                font-size: 0.66rem;
            }

            .zt-workspace-fragment--overview {
                top: 6%;
                left: 4%;
                width: 238px;
            }

            .zt-workspace-fragment--invoice {
                top: 31%;
                right: 3%;
                width: 178px;
            }

            .zt-workspace-fragment--tickets {
                top: 55%;
                left: 2%;
                width: 226px;
            }

            .zt-workspace-fragment--security {
                right: 6%;
                bottom: 0;
                width: 198px;
            }

            .zt-portal-hero__trust {
                width: calc(100% - 28px);
                grid-template-columns: repeat(2, minmax(0, 1fr));
                margin-bottom: 20px;
                border-radius: 16px;
                background: rgba(255, 255, 255, 0.1);
            }

            .zt-portal-hero__trust span {
                min-height: 46px;
                border-right: 0;
                color: rgba(255, 255, 255, 0.94);
                font-size: 0.74rem;
            }
        }

        .zt-launch-section {
            overflow: hidden;
            padding: clamp(86px, 8vw, 122px) clamp(18px, 4vw, 56px);
            background:
                radial-gradient(circle at 4% 8%, rgba(4, 58, 126, 0.1), transparent 30%),
                radial-gradient(circle at 94% 88%, rgba(4, 58, 126, 0.075), transparent 34%),
                radial-gradient(circle at 76% 12%, rgba(223, 164, 8, 0.04), transparent 28%),
                linear-gradient(rgba(4, 58, 126, 0.024) 1px, transparent 1px),
                linear-gradient(90deg, rgba(4, 58, 126, 0.024) 1px, transparent 1px),
                linear-gradient(180deg, #f8fbff 0%, #f3f8ff 48%, #f8fbff 100%);
            background-size: auto, auto, auto, 34px 34px, 34px 34px, auto;
        }

        .zt-launch-header {
            margin-bottom: clamp(34px, 4.5vw, 54px);
        }

        .zt-launch-path {
            position: relative;
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: clamp(22px, 2.4vw, 34px);
            max-width: 1180px;
            margin: 0 auto;
            align-items: stretch;
        }

        .zt-launch-path::before {
            content: "";
            position: absolute;
            top: 32px;
            right: calc(12.5% + 34px);
            left: calc(12.5% + 34px);
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(223, 164, 8, 0.3), rgba(122, 98, 0, 0.42), rgba(223, 164, 8, 0.3), transparent);
            box-shadow: 0 0 16px rgba(223, 164, 8, 0.12);
            pointer-events: none;
        }

        .zt-launch-lines {
            display: none;
        }

        .zt-launch-step {
            position: relative;
            display: flex;
            min-height: 222px;
            height: 100%;
            flex-direction: column;
            align-items: flex-start;
            gap: 11px;
            border: 1px solid rgba(4, 58, 126, 0.09);
            border-radius: 22px;
            padding: 28px 22px 24px;
            background: rgba(255, 255, 255, 0.88);
            color: #0f172a;
            box-shadow: 0 18px 44px rgba(4, 58, 126, 0.08);
        }

        .zt-launch-step:hover,
        .zt-launch-step:focus {
            border-color: rgba(223, 164, 8, 0.34);
            color: #0f172a;
            text-decoration: none;
            transform: translateY(-4px);
            box-shadow: 0 24px 54px rgba(4, 58, 126, 0.12);
        }

        .zt-launch-step__count {
            position: static;
            display: inline-flex;
            min-width: 58px;
            height: 30px;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(223, 164, 8, 0.36);
            border-radius: 999px;
            background: rgba(223, 164, 8, 0.1);
            color: #7a6200;
            font-size: 0.9rem;
            font-weight: 950;
            letter-spacing: 0.08em;
        }

        .zt-launch-step__icon {
            display: none;
        }

        .zt-launch-step strong {
            color: #043a7e;
            font-size: 1rem;
            font-weight: 900;
            line-height: 1.26;
        }

        .zt-launch-step > span:last-child {
            color: rgba(15, 23, 42, 0.64);
            font-size: 0.88rem;
            font-weight: 650;
            line-height: 1.55;
        }

        .zt-launch-divider {
            max-width: 860px;
            margin: clamp(48px, 5.5vw, 72px) auto;
            opacity: 0.75;
        }

        .zt-service-promo {
            display: grid;
            max-width: 1160px;
            grid-template-columns: minmax(0, 0.92fr) minmax(360px, 1.08fr);
            gap: clamp(34px, 4vw, 58px);
            border-radius: 32px;
            padding: clamp(34px, 4.2vw, 54px);
            background: rgba(255, 255, 255, 0.96);
            box-shadow:
                0 34px 86px rgba(4, 58, 126, 0.16),
                0 1px 0 rgba(255, 255, 255, 0.9) inset;
        }

        .zt-service-chips {
            display: grid;
            grid-template-columns: repeat(12, minmax(0, 1fr));
            gap: 22px 24px;
            align-items: center;
            align-content: center;
            justify-items: start;
            min-height: 330px;
            padding: 8px 0;
        }

        .zt-service-chip {
            position: relative;
            display: inline-flex;
            align-items: center;
            justify-content: flex-start;
            gap: 10px;
            width: max-content;
            max-width: 100%;
            min-height: 48px;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 999px;
            padding: 13px 17px;
            background: #ffffff;
            color: #043a7e;
            font-size: 0.9rem;
            font-weight: 900;
            line-height: 1.2;
            box-shadow: 0 16px 34px rgba(4, 58, 126, 0.09);
            transition: transform 0.22s ease, border-color 0.22s ease, box-shadow 0.22s ease;
        }

        .zt-service-chip::after {
            content: "\2192";
            display: inline-block;
            color: #dfa408;
            font-weight: 900;
            transform: translateX(0);
            transition: transform 0.22s ease;
        }

        .zt-service-chip i {
            display: inline-grid;
            width: 28px;
            height: 28px;
            flex: 0 0 auto;
            place-items: center;
            border-radius: 999px;
            background: rgba(223, 164, 8, 0.12);
            color: #dfa408;
            font-size: 0.92rem;
        }

        .zt-service-chip:hover {
            border-color: rgba(223, 164, 8, 0.46);
            transform: translateY(-4px);
            box-shadow: 0 22px 44px rgba(4, 58, 126, 0.14);
        }

        .zt-service-chip:hover::after {
            transform: translateX(4px);
        }

        .zt-service-chip--one {
            grid-column: 1 / span 5;
            justify-self: start;
        }

        .zt-service-chip--two {
            grid-column: 7 / span 5;
            justify-self: start;
        }

        .zt-service-chip--three {
            grid-column: 2 / span 5;
            justify-self: start;
        }

        .zt-service-chip--four {
            grid-column: 8 / span 4;
            justify-self: start;
        }

        .zt-service-chip--five {
            grid-column: 1 / span 4;
            justify-self: start;
        }

        .zt-service-chip--six {
            grid-column: 6 / span 6;
            justify-self: start;
        }

        .zt-service-chip--seven {
            grid-column: 4 / span 5;
            justify-self: start;
        }

        @media (max-width: 991.98px) {
            .zt-launch-path {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .zt-launch-path::before {
                display: none;
            }

            .zt-service-promo {
                grid-template-columns: 1fr;
            }

            .zt-service-chips {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                min-height: 0;
            }

            .zt-service-chip,
            .zt-service-chip--one,
            .zt-service-chip--two,
            .zt-service-chip--three,
            .zt-service-chip--four,
            .zt-service-chip--five,
            .zt-service-chip--six,
            .zt-service-chip--seven {
                grid-column: auto;
                justify-self: stretch;
                width: 100%;
            }
        }

        @media (max-width: 575.98px) {
            .zt-launch-section {
                padding-right: 18px;
                padding-left: 18px;
            }

            .zt-launch-path,
            .zt-service-chips {
                grid-template-columns: 1fr;
            }

            .zt-launch-step {
                min-height: 0;
                height: auto;
                padding: 24px 20px 22px;
            }

            .zt-service-promo {
                padding: 28px 18px;
                border-radius: 24px;
            }

            .zt-service-chip {
                min-height: 50px;
                justify-content: flex-start;
            }
        }

        .zt-review-panel {
            position: relative;
            isolation: isolate;
            overflow: hidden;
            padding: clamp(86px, 8vw, 124px) 0 clamp(78px, 7vw, 108px);
            background:
                radial-gradient(circle at 8% 8%, rgba(223, 164, 8, 0.12), transparent 30%),
                radial-gradient(circle at 92% 86%, rgba(223, 164, 8, 0.1), transparent 28%),
                radial-gradient(circle at 78% 12%, rgba(4, 58, 126, 0.035), transparent 26%),
                linear-gradient(rgba(4, 58, 126, 0.026) 1px, transparent 1px),
                linear-gradient(90deg, rgba(4, 58, 126, 0.026) 1px, transparent 1px),
                #ffffff;
            background-size: auto, auto, auto, 34px 34px, 34px 34px, auto;
        }

        .zt-review-panel::before {
            content: "";
            position: absolute;
            inset: 0;
            z-index: -1;
            background-image:
                radial-gradient(circle, rgba(4, 58, 126, 0.08) 0 1px, transparent 1.5px),
                radial-gradient(circle, rgba(223, 164, 8, 0.08) 0 1px, transparent 1.5px);
            background-position: 0 0, 26px 30px;
            background-size: 84px 84px, 118px 118px;
            opacity: 0.32;
            pointer-events: none;
        }

        .zt-review-panel .zt-support-heading {
            max-width: 940px;
            margin: 0 auto clamp(38px, 4.8vw, 62px);
            padding: 0 24px;
        }

        .zt-review-eyebrow {
            display: inline-grid;
            gap: 12px;
            justify-items: center;
            margin-bottom: 18px;
            color: #7a6200;
            font-size: 0.76rem;
            font-weight: 950;
            letter-spacing: 0.16em;
            text-transform: uppercase;
        }

        .zt-review-eyebrow::after {
            content: "";
            width: 54px;
            height: 2px;
            border-radius: 999px;
            background: #dfa408;
            box-shadow: 0 0 16px rgba(223, 164, 8, 0.26);
        }

        .zt-review-panel .zt-support-heading h2 {
            margin: 0;
            color: #0f172a;
            font-size: clamp(2.25rem, 4.3vw, 4rem);
            font-weight: 950;
            letter-spacing: 0;
            line-height: 1.05;
        }

        .zt-review-marquee {
            position: relative;
            max-width: none;
            width: 100%;
            overflow: hidden;
            padding: 10px 0 18px;
        }

        .zt-review-marquee::before,
        .zt-review-marquee::after {
            content: "";
            position: absolute;
            top: 0;
            bottom: 0;
            z-index: 3;
            width: min(11vw, 150px);
            pointer-events: none;
        }

        .zt-review-marquee::before {
            left: 0;
            background: linear-gradient(90deg, #ffffff 0%, rgba(255, 255, 255, 0.86) 34%, rgba(255, 255, 255, 0) 100%);
        }

        .zt-review-marquee::after {
            right: 0;
            background: linear-gradient(270deg, #ffffff 0%, rgba(255, 255, 255, 0.86) 34%, rgba(255, 255, 255, 0) 100%);
        }

        .zt-review-track {
            display: flex;
            width: max-content;
            gap: 24px;
            padding: 0 24px;
            will-change: transform;
            animation: zt-review-scroll 42s linear infinite;
        }

        .zt-review-marquee:hover .zt-review-track,
        .zt-review-marquee:focus-within .zt-review-track {
            animation-play-state: paused;
        }

        .zt-review-card {
            position: relative;
            display: flex;
            width: clamp(310px, 27vw, 370px);
            min-height: 248px;
            flex: 0 0 clamp(310px, 27vw, 370px);
            flex-direction: column;
            justify-content: space-between;
            margin: 0;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 26px;
            padding: 28px;
            background:
                linear-gradient(145deg, #ffffff 0%, #ffffff 72%, rgba(4, 58, 126, 0.025) 100%);
            box-shadow:
                0 16px 44px rgba(15, 23, 42, 0.065),
                inset 0 0 0 1px rgba(255, 255, 255, 0.76);
            transition: transform 0.24s ease, border-color 0.24s ease, box-shadow 0.24s ease;
        }

        .zt-review-card:hover,
        .zt-review-card:focus-within {
            border-color: rgba(223, 164, 8, 0.46);
            transform: translateY(-5px);
            box-shadow:
                0 24px 58px rgba(4, 58, 126, 0.13),
                0 0 0 4px rgba(223, 164, 8, 0.08),
                inset 0 0 0 1px rgba(223, 164, 8, 0.08);
        }

        .zt-review-stars {
            display: block;
            color: #dfa408;
            font-size: 1.08rem;
            font-weight: 950;
            letter-spacing: 0.08em;
            line-height: 1;
            text-shadow: 0 8px 18px rgba(223, 164, 8, 0.14);
            transition: color 0.22s ease, filter 0.22s ease;
        }

        .zt-review-card:hover .zt-review-stars,
        .zt-review-card:focus-within .zt-review-stars {
            color: #f0b419;
            filter: brightness(1.08);
        }

        .zt-review-card blockquote {
            margin: 22px 0 24px;
            color: rgba(15, 23, 42, 0.78);
            font-size: clamp(0.98rem, 1.05vw, 1.06rem);
            font-weight: 720;
            line-height: 1.72;
        }

        .zt-review-card figcaption {
            display: inline-flex;
            align-self: flex-start;
            align-items: center;
            gap: 9px;
            margin-top: auto;
            color: #043a7e;
            font-size: 0.78rem;
            font-weight: 950;
            letter-spacing: 0.08em;
            line-height: 1.2;
            text-transform: uppercase;
        }

        .zt-review-card figcaption::before {
            content: "";
            width: 22px;
            height: 2px;
            border-radius: 999px;
            background: #dfa408;
        }

        .zt-review-trust {
            display: flex;
            max-width: 1080px;
            flex-wrap: wrap;
            justify-content: center;
            gap: 0;
            margin: clamp(26px, 3vw, 40px) auto 0;
            padding: 0 24px;
            color: rgba(15, 23, 42, 0.68);
            font-size: 0.82rem;
            font-weight: 900;
            line-height: 1.25;
        }

        .zt-review-trust span {
            display: inline-flex;
            min-height: 34px;
            align-items: center;
            gap: 8px;
            padding: 7px 18px;
            border-right: 1px solid rgba(4, 58, 126, 0.12);
            color: rgba(15, 23, 42, 0.72);
        }

        .zt-review-trust span:first-child {
            color: #7a6200;
        }

        .zt-review-trust span:last-child {
            border-right: 0;
        }

        @keyframes zt-review-scroll {
            from { transform: translateX(0); }
            to { transform: translateX(calc(-50% - 12px)); }
        }

        @media (prefers-reduced-motion: reduce) {
            .zt-review-track {
                animation-duration: 90s;
            }
        }

        @media (max-width: 991.98px) {
            .zt-review-panel {
                padding-top: 76px;
                padding-bottom: 76px;
            }

            .zt-review-panel .zt-support-heading h2 {
                font-size: clamp(2rem, 6vw, 3.1rem);
            }

            .zt-review-card {
                width: 318px;
                flex-basis: 318px;
            }
        }

        @media (max-width: 575.98px) {
            .zt-review-panel {
                padding-top: 64px;
                padding-bottom: 66px;
            }

            .zt-review-panel .zt-support-heading {
                margin-bottom: 28px;
                padding: 0 18px;
            }

            .zt-review-panel .zt-support-heading h2 {
                font-size: clamp(2rem, 10vw, 2.65rem);
            }

            .zt-review-marquee {
                padding-bottom: 12px;
            }

            .zt-review-marquee::before,
            .zt-review-marquee::after {
                width: 42px;
            }

            .zt-review-track {
                gap: 18px;
                padding: 0 18px;
                animation-duration: 36s;
            }

            .zt-review-card {
                width: min(82vw, 292px);
                min-height: 238px;
                flex-basis: min(82vw, 292px);
                border-radius: 22px;
                padding: 23px;
            }

            .zt-review-trust {
                display: grid;
                grid-template-columns: 1fr;
                max-width: 300px;
                padding: 0 18px;
            }

            .zt-review-trust span {
                justify-content: center;
                border-right: 0;
                border-bottom: 1px solid rgba(4, 58, 126, 0.1);
                text-align: center;
            }

            .zt-review-trust span:last-child {
                border-bottom: 0;
            }
        }

        .zt-resource-command {
            position: relative;
            isolation: isolate;
            overflow: hidden;
            padding: clamp(86px, 8vw, 126px) 0 clamp(76px, 7vw, 104px);
            background:
                radial-gradient(circle at 18% 18%, rgba(255, 255, 255, 0.17), transparent 28%),
                radial-gradient(circle at 82% 68%, rgba(223, 164, 8, 0.13), transparent 34%),
                radial-gradient(circle at 50% 0%, rgba(255, 255, 255, 0.08), transparent 34%),
                linear-gradient(rgba(255, 255, 255, 0.032) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255, 255, 255, 0.032) 1px, transparent 1px),
                linear-gradient(145deg, #043a7e 0%, #064890 52%, #0f172a 100%);
            background-size: auto, auto, auto, 38px 38px, 38px 38px, auto;
            color: #ffffff;
        }

        .zt-resource-command::before,
        .zt-resource-command::after {
            content: "";
            position: absolute;
            pointer-events: none;
        }

        .zt-resource-command::before {
            inset: 0;
            z-index: -1;
            background:
                linear-gradient(115deg, transparent 0%, rgba(255, 255, 255, 0.09) 48%, transparent 76%);
            transform: translateX(-120%);
            animation: zt-resource-sweep 9s ease-in-out infinite;
        }

        .zt-resource-command::after {
            inset: 0;
            z-index: -2;
            background:
                radial-gradient(circle at 14% 28%, rgba(255, 255, 255, 0.2) 0 1px, transparent 2px),
                radial-gradient(circle at 72% 38%, rgba(223, 164, 8, 0.24) 0 1px, transparent 2px),
                radial-gradient(circle at 42% 76%, rgba(255, 255, 255, 0.16) 0 1px, transparent 2px);
            background-size: 132px 132px, 178px 178px, 156px 156px;
            opacity: 0.42;
            animation: zt-resource-particles 18s linear infinite;
        }

        .zt-resource-command__bg {
            position: absolute;
            inset: 0;
            z-index: -1;
            overflow: hidden;
            pointer-events: none;
        }

        .zt-resource-command__bg span {
            position: absolute;
            display: block;
            height: 1px;
            border-radius: 999px;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.16), rgba(223, 164, 8, 0.16), transparent);
            opacity: 0.72;
        }

        .zt-resource-command__bg span:nth-child(1) {
            top: 28%;
            left: -8%;
            width: 62%;
            transform: rotate(-8deg);
        }

        .zt-resource-command__bg span:nth-child(2) {
            right: -10%;
            bottom: 32%;
            width: 58%;
            transform: rotate(9deg);
        }

        .zt-resource-command__bg span:nth-child(3) {
            top: 58%;
            left: 18%;
            width: 42%;
            opacity: 0.42;
        }

        .zt-resource-command__heading {
            position: relative;
            z-index: 2;
            max-width: 860px;
            margin: 0 auto clamp(36px, 4.8vw, 58px);
            padding: 0 24px;
            text-align: center;
        }

        .zt-resource-eyebrow {
            display: inline-grid;
            gap: 12px;
            justify-items: center;
            margin-bottom: 18px;
            color: rgba(255, 255, 255, 0.82);
            font-size: 0.76rem;
            font-weight: 950;
            letter-spacing: 0.16em;
            text-transform: uppercase;
        }

        .zt-resource-eyebrow::after {
            content: "";
            width: 54px;
            height: 2px;
            border-radius: 999px;
            background: #dfa408;
            box-shadow: 0 0 18px rgba(223, 164, 8, 0.34);
        }

        .zt-resource-command__heading h2 {
            margin: 0;
            color: #ffffff;
            font-size: clamp(2.35rem, 4.6vw, 4.1rem);
            font-weight: 950;
            letter-spacing: 0;
            line-height: 1.05;
        }

        .zt-resource-command__heading p {
            max-width: 680px;
            margin: 20px auto 0;
            color: rgba(255, 255, 255, 0.78);
            font-size: clamp(0.98rem, 1.25vw, 1.12rem);
            font-weight: 650;
            line-height: 1.7;
        }

        .zt-resource-ribbon {
            position: relative;
            z-index: 2;
            max-width: none;
            width: 100%;
            overflow: hidden;
            padding: 8px 0 18px;
        }

        .zt-resource-ribbon::before,
        .zt-resource-ribbon::after {
            content: "";
            position: absolute;
            top: 0;
            bottom: 0;
            z-index: 4;
            width: min(12vw, 164px);
            pointer-events: none;
        }

        .zt-resource-ribbon::before {
            left: 0;
            background: linear-gradient(90deg, #043a7e 0%, rgba(4, 58, 126, 0.86) 34%, rgba(4, 58, 126, 0) 100%);
        }

        .zt-resource-ribbon::after {
            right: 0;
            background: linear-gradient(270deg, #0f172a 0%, rgba(15, 23, 42, 0.72) 32%, rgba(15, 23, 42, 0) 100%);
        }

        .zt-resource-track {
            display: flex;
            width: max-content;
            gap: 18px;
            padding: 0 24px;
            will-change: transform;
            animation: zt-resource-scroll 52s linear infinite;
        }

        .zt-resource-ribbon:hover .zt-resource-track,
        .zt-resource-ribbon:focus-within .zt-resource-track {
            animation-play-state: paused;
        }

        .zt-resource-capsule {
            position: relative;
            display: grid;
            width: clamp(282px, 24vw, 334px);
            min-height: 106px;
            flex: 0 0 clamp(282px, 24vw, 334px);
            grid-template-columns: 48px minmax(0, 1fr);
            gap: 14px;
            align-items: center;
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 28px;
            padding: 18px;
            background: rgba(255, 255, 255, 0.1);
            color: #ffffff;
            text-decoration: none;
            box-shadow:
                0 20px 48px rgba(1, 22, 48, 0.24),
                inset 0 1px 0 rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(14px);
            transition: transform 0.24s ease, border-color 0.24s ease, box-shadow 0.24s ease, background-color 0.24s ease;
        }

        .zt-resource-capsule:hover,
        .zt-resource-capsule:focus {
            border-color: rgba(223, 164, 8, 0.52);
            background: rgba(255, 255, 255, 0.14);
            color: #ffffff;
            text-decoration: none;
            transform: translateY(-4px);
            box-shadow:
                0 28px 62px rgba(1, 22, 48, 0.3),
                0 0 0 4px rgba(223, 164, 8, 0.08),
                inset 0 1px 0 rgba(255, 255, 255, 0.16);
        }

        .zt-resource-capsule__icon {
            display: inline-flex;
            width: 48px;
            height: 48px;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(223, 164, 8, 0.38);
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.08);
            color: #dfa408;
            font-size: 1rem;
            transition: color 0.22s ease, border-color 0.22s ease, background-color 0.22s ease, transform 0.22s ease;
        }

        .zt-resource-capsule:hover .zt-resource-capsule__icon,
        .zt-resource-capsule:focus .zt-resource-capsule__icon {
            border-color: rgba(223, 164, 8, 0.72);
            background: rgba(223, 164, 8, 0.12);
            color: #f0b419;
            transform: translateY(-1px);
        }

        .zt-resource-capsule strong,
        .zt-resource-capsule > span:last-child {
            display: block;
            min-width: 0;
        }

        .zt-resource-capsule strong {
            color: #ffffff;
            font-size: 0.98rem;
            font-weight: 950;
            line-height: 1.2;
            transition: color 0.22s ease;
        }

        .zt-resource-capsule:hover strong,
        .zt-resource-capsule:focus strong {
            color: #ffffff;
            filter: brightness(1.08);
        }

        .zt-resource-capsule > span:last-child {
            grid-column: 2;
            margin-top: -14px;
            overflow: hidden;
            color: rgba(255, 255, 255, 0.7);
            font-size: 0.78rem;
            font-weight: 720;
            line-height: 1.38;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .zt-resource-status {
            display: flex;
            position: relative;
            z-index: 2;
            max-width: 1080px;
            flex-wrap: wrap;
            justify-content: center;
            gap: 0;
            margin: clamp(24px, 3vw, 38px) auto 0;
            padding: 0 24px;
            color: rgba(255, 255, 255, 0.78);
            font-size: 0.8rem;
            font-weight: 900;
            line-height: 1.25;
        }

        .zt-resource-status span {
            display: inline-flex;
            min-height: 34px;
            align-items: center;
            gap: 8px;
            padding: 7px 18px;
            border-right: 1px solid rgba(223, 164, 8, 0.32);
        }

        .zt-resource-status span::before {
            content: "\2713";
            color: #dfa408;
            font-weight: 950;
        }

        .zt-resource-status span:last-child {
            border-right: 0;
        }

        @keyframes zt-resource-scroll {
            from { transform: translateX(0); }
            to { transform: translateX(calc(-50% - 9px)); }
        }

        @keyframes zt-resource-sweep {
            0%, 48% { opacity: 0; transform: translateX(-120%); }
            58% { opacity: 1; }
            84%, 100% { opacity: 0; transform: translateX(240%); }
        }

        @keyframes zt-resource-particles {
            from { background-position: 0 0, 0 0, 0 0; }
            to { background-position: 132px 132px, -178px 178px, 156px -156px; }
        }

        @media (prefers-reduced-motion: reduce) {
            .zt-resource-track,
            .zt-resource-command::before,
            .zt-resource-command::after {
                animation-duration: 90s;
            }
        }

        @media (max-width: 991.98px) {
            .zt-resource-command {
                padding-top: 76px;
                padding-bottom: 78px;
            }

            .zt-resource-command__heading h2 {
                font-size: clamp(2.1rem, 6vw, 3.2rem);
            }

            .zt-resource-capsule {
                width: 296px;
                flex-basis: 296px;
            }
        }

        @media (max-width: 575.98px) {
            .zt-resource-command {
                padding-top: 64px;
                padding-bottom: 66px;
            }

            .zt-resource-command__heading {
                margin-bottom: 30px;
                padding: 0 18px;
            }

            .zt-resource-command__heading h2 {
                font-size: clamp(2rem, 10vw, 2.75rem);
            }

            .zt-resource-ribbon::before,
            .zt-resource-ribbon::after {
                width: 42px;
            }

            .zt-resource-track {
                gap: 16px;
                padding: 0 18px;
                animation-duration: 42s;
            }

            .zt-resource-capsule {
                width: min(84vw, 286px);
                min-height: 104px;
                flex-basis: min(84vw, 286px);
                border-radius: 24px;
                padding: 16px;
            }

            .zt-resource-status {
                display: grid;
                grid-template-columns: 1fr;
                max-width: 310px;
                padding: 0 18px;
            }

            .zt-resource-status span {
                justify-content: center;
                border-right: 0;
                border-bottom: 1px solid rgba(223, 164, 8, 0.22);
                text-align: center;
            }

            .zt-resource-status span:last-child {
                border-bottom: 0;
            }
        }

        .zt-faq-panel {
            overflow: visible;
            padding: 0 18px clamp(88px, 8vw, 122px);
            background: #ffffff;
        }

        .zt-faq-hero {
            position: relative;
            left: 50%;
            width: 100vw;
            margin-left: -50vw;
            overflow: hidden;
            padding: clamp(78px, 8vw, 118px) 24px clamp(112px, 10vw, 154px);
            background:
                radial-gradient(circle at 20% 20%, rgba(255, 255, 255, 0.16), transparent 28%),
                radial-gradient(circle at 78% 30%, rgba(223, 164, 8, 0.13), transparent 24%),
                #043a7e;
            background-size: auto, auto, auto;
            color: #ffffff;
            text-align: center;
        }

        .zt-faq-hero::before,
        .zt-faq-hero::after {
            content: "";
            position: absolute;
            pointer-events: none;
        }

        .zt-faq-hero::before {
            top: 0;
            bottom: 0;
            width: 32%;
            background: linear-gradient(105deg, transparent 0%, rgba(255, 255, 255, 0.09) 46%, transparent 82%);
            transform: translateX(-130%);
            animation: zt-faq-sweep 7.5s ease-in-out infinite;
        }

        .zt-faq-hero::after {
            inset: 0;
            background:
                radial-gradient(circle at 32% 64%, rgba(255, 255, 255, 0.2) 0 1px, transparent 2px),
                radial-gradient(circle at 70% 28%, rgba(223, 164, 8, 0.32) 0 1px, transparent 2px);
            background-size: 126px 126px, 168px 168px;
            opacity: 0.4;
        }

        .zt-faq-hero__inner {
            position: relative;
            z-index: 1;
            max-width: 880px;
            margin: 0 auto;
        }

        .zt-faq-eyebrow {
            display: inline-grid;
            gap: 12px;
            justify-items: center;
            color: rgba(255, 255, 255, 0.82);
            font-size: 0.78rem;
            font-weight: 950;
            letter-spacing: 0.16em;
            text-transform: uppercase;
        }

        .zt-faq-eyebrow::after {
            content: "";
            width: 54px;
            height: 2px;
            border-radius: 999px;
            background: #dfa408;
        }

        .zt-faq-hero h2 {
            margin: 20px 0 0;
            color: #ffffff;
            font-size: clamp(2.25rem, 4.4vw, 4rem);
            font-weight: 950;
            letter-spacing: 0;
            line-height: 1.05;
        }

        .zt-faq-hero p {
            max-width: 720px;
            margin: 22px auto 0;
            color: rgba(255, 255, 255, 0.84);
            font-size: clamp(1rem, 1.35vw, 1.15rem);
            line-height: 1.7;
        }

        .zt-faq-shell {
            position: relative;
            z-index: 2;
            width: min(80%, 1080px);
            margin: clamp(-82px, -6vw, -54px) auto 0;
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 30px;
            padding: clamp(28px, 4vw, 48px);
            background: #ffffff;
            box-shadow: 0 34px 90px rgba(4, 58, 126, 0.16);
        }

        .zt-faq-accordion {
            max-width: none;
            gap: 18px;
        }

        .zt-faq-item {
            overflow: hidden;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 22px;
            background: #ffffff;
            box-shadow: 0 16px 38px rgba(4, 58, 126, 0.08);
            transition: transform 0.22s ease, border-color 0.22s ease, box-shadow 0.22s ease;
        }

        .zt-faq-item:hover,
        .zt-faq-item:focus-within {
            border-color: rgba(4, 58, 126, 0.24);
            transform: translateY(-2px);
            box-shadow: 0 22px 48px rgba(4, 58, 126, 0.12);
        }

        .zt-faq-button {
            min-height: 72px;
            padding: 24px 26px;
            color: #0f172a;
            font-size: 1.03rem;
            font-weight: 900;
            transition: color 0.22s ease, background-color 0.22s ease;
        }

        .zt-faq-button:hover,
        .zt-faq-button:focus {
            color: #043a7e;
        }

        .zt-faq-indicator {
            position: relative;
            width: 26px;
            height: 26px;
            flex: 0 0 26px;
            border-radius: 999px;
        }

        .zt-faq-indicator::before,
        .zt-faq-indicator::after {
            content: "";
            position: absolute;
            top: 50%;
            left: 50%;
            width: 16px;
            height: 2px;
            border-radius: 999px;
            background: #043a7e;
            transform: translate(-50%, -50%);
            transition: transform 0.22s ease, background-color 0.22s ease;
        }

        .zt-faq-indicator::after {
            transform: translate(-50%, -50%) rotate(90deg);
        }

        .zt-faq-button[aria-expanded="true"] {
            color: #043a7e;
        }

        .zt-faq-button[aria-expanded="true"] .zt-faq-indicator::before {
            background: #dfa408;
        }

        .zt-faq-button[aria-expanded="true"] .zt-faq-indicator::after {
            background: #dfa408;
            transform: translate(-50%, -50%) rotate(0deg);
        }

        .zt-faq-body {
            position: relative;
            margin: 0 22px 22px;
            border-top: 2px solid rgba(223, 164, 8, 0.52);
            border-left: 3px solid #043a7e;
            border-radius: 0 0 18px 18px;
            padding: 20px 22px 22px;
            background: linear-gradient(180deg, rgba(4, 58, 126, 0.055), rgba(248, 251, 255, 0.88));
            color: rgba(15, 23, 42, 0.72);
            font-size: 0.98rem;
            font-weight: 650;
            line-height: 1.72;
        }

        .zt-faq-item .collapsing {
            transition: height 0.28s ease;
        }

        .zt-faq-support {
            margin: clamp(34px, 4vw, 52px) auto 0;
            max-width: 720px;
            text-align: center;
        }

        .zt-faq-support h3 {
            margin: 0;
            color: #0f172a;
            font-size: clamp(1.65rem, 2.8vw, 2.35rem);
            font-weight: 950;
            line-height: 1.12;
        }

        .zt-faq-support p {
            margin: 14px auto 0;
            max-width: 520px;
            color: rgba(15, 23, 42, 0.66);
            font-size: 1rem;
            line-height: 1.65;
        }

        .zt-faq-support__actions {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 14px;
            margin-top: 24px;
        }

        .zt-faq-support__button {
            display: inline-flex;
            min-height: 48px;
            align-items: center;
            justify-content: center;
            border-radius: 999px;
            padding: 13px 20px;
            font-size: 0.94rem;
            font-weight: 900;
            text-decoration: none;
            transition: transform 0.22s ease, box-shadow 0.22s ease, border-color 0.22s ease;
        }

        .zt-faq-support__button:hover,
        .zt-faq-support__button:focus {
            text-decoration: none;
            transform: translateY(-2px);
        }

        .zt-faq-support__button--primary {
            border: 1px solid #043a7e;
            background: #043a7e;
            color: #ffffff;
            box-shadow: 0 16px 34px rgba(4, 58, 126, 0.2);
        }

        .zt-faq-support__button--primary:hover,
        .zt-faq-support__button--primary:focus {
            color: #ffffff;
            box-shadow: 0 20px 42px rgba(4, 58, 126, 0.26);
        }

        .zt-faq-support__button--secondary {
            border: 1px solid rgba(4, 58, 126, 0.16);
            background: #ffffff;
            color: #043a7e;
        }

        .zt-faq-support__button--secondary:hover,
        .zt-faq-support__button--secondary:focus {
            border-color: rgba(223, 164, 8, 0.56);
            color: #043a7e;
            box-shadow: 0 16px 34px rgba(4, 58, 126, 0.1);
        }

        @keyframes zt-faq-sweep {
            0%, 46% { transform: translateX(-130%); opacity: 0; }
            56% { opacity: 1; }
            78%, 100% { transform: translateX(330%); opacity: 0; }
        }

        @media (max-width: 991.98px) {
            .zt-faq-shell {
                width: min(92%, 760px);
            }
        }

        @media (max-width: 575.98px) {
            .zt-faq-panel {
                padding-right: 14px;
                padding-left: 14px;
            }

            .zt-faq-hero {
                padding-right: 18px;
                padding-left: 18px;
            }

            .zt-faq-shell {
                width: 100%;
                border-radius: 24px;
                padding: 18px;
            }

            .zt-faq-button {
                min-height: 64px;
                padding: 20px 18px;
                font-size: 0.96rem;
            }

            .zt-faq-body {
                margin: 0 14px 16px;
                padding: 17px 18px 18px;
            }

            .zt-faq-support__actions {
                display: grid;
                grid-template-columns: 1fr;
            }
        }

        .zt-portal-hero {
            margin: 0;
            border-radius: 0 0 22px 22px;
        }

        .zt-portal-hero__inner {
            min-height: 450px;
            grid-template-columns: minmax(330px, 0.88fr) minmax(430px, 1.12fr);
            gap: clamp(22px, 3.4vw, 48px);
            padding: clamp(26px, 3.8vw, 44px) clamp(22px, 5vw, 64px) 20px;
        }

        .zt-portal-hero__content {
            max-width: 610px;
        }

        .zt-portal-hero__eyebrow {
            margin-bottom: 10px;
            border: 0;
            border-radius: 0;
            padding: 0;
            background: transparent;
            color: #dfa408;
            font-size: 0.78rem;
            font-weight: 900;
            letter-spacing: 0.14em;
            line-height: 1;
            text-transform: uppercase;
            box-shadow: none;
        }

        .zt-portal-hero__eyebrow span {
            color: inherit;
        }

        .zt-portal-hero__title {
            font-size: clamp(2.35rem, 4.4vw, 4rem);
            line-height: 1.04;
        }

        .zt-portal-hero__copy {
            margin-top: 16px;
        }

        .zt-portal-hero__actions {
            margin-top: 22px;
        }

        .zt-portal-hero__visual {
            display: flex;
            min-height: 300px;
            max-width: 720px;
            align-items: center;
            justify-content: flex-end;
            align-self: center;
            margin-left: auto;
            animation: none;
        }

        .zt-portal-hero__visual::before,
        .zt-portal-hero__visual::after {
            display: none;
        }

        .zt-portal-hero__image-wrap {
            position: relative;
            z-index: 2;
            width: min(100%, 760px);
            margin: 0;
        }

        .zt-portal-hero__image {
            display: block;
            width: 100%;
            height: auto;
            filter: drop-shadow(0 34px 54px rgba(1, 22, 48, 0.2));
        }

        .zt-portal-hero__trust {
            margin-top: 0;
            margin-bottom: 18px;
        }

        @media (max-width: 991.98px) {
            .zt-portal-hero__inner {
                min-height: 0;
                grid-template-columns: 1fr;
                padding-top: 32px;
                padding-bottom: 18px;
            }

            .zt-portal-hero__visual {
                width: min(100%, 590px);
                min-height: 0;
                justify-content: center;
                margin-right: auto;
                margin-left: auto;
            }
        }

        @media (max-width: 575.98px) {
            .zt-portal-hero {
                border-radius: 0 0 18px 18px;
            }

            .zt-portal-hero__inner {
                gap: 16px;
                padding: 24px 18px 14px;
            }

            .zt-portal-hero__title {
                font-size: clamp(2.08rem, 11vw, 2.75rem);
            }

            .zt-portal-hero__copy {
                margin-top: 14px;
            }

            .zt-portal-hero__actions {
                margin-top: 18px;
                gap: 10px;
            }

            .zt-portal-hero__button {
                min-height: 44px;
                flex: 1 1 136px;
                padding: 0.78rem 1rem;
                font-size: 0.9rem;
            }

            .zt-portal-hero__image-wrap {
                width: min(100%, 520px);
            }

            .zt-portal-hero__trust {
                width: calc(100% - 28px);
                margin-right: auto;
                margin-bottom: 12px;
                margin-left: auto;
                grid-template-columns: repeat(2, minmax(0, 1fr));
                border-radius: 14px;
            }

            .zt-portal-hero__trust span {
                min-height: 34px;
                padding: 7px 8px;
                font-size: 0.68rem;
            }
        }

        .zt-control-network {
            isolation: isolate;
            padding: clamp(74px, 7vw, 112px) clamp(18px, 4vw, 56px);
            background:
                radial-gradient(circle at 8% 12%, rgba(4, 58, 126, 0.11), transparent 30%),
                radial-gradient(circle at 92% 86%, rgba(4, 58, 126, 0.08), transparent 34%),
                radial-gradient(circle at 78% 14%, rgba(223, 164, 8, 0.055), transparent 28%),
                linear-gradient(rgba(4, 58, 126, 0.025) 1px, transparent 1px),
                linear-gradient(90deg, rgba(4, 58, 126, 0.025) 1px, transparent 1px),
                #f8fafc;
            background-size: auto, auto, auto, 38px 38px, 38px 38px, auto;
        }

        .zt-control-network::after {
            display: none;
        }

        .zt-control-header {
            margin-bottom: clamp(30px, 4vw, 48px);
        }

        .zt-control-header h2 {
            color: #043a7e;
        }

        .zt-workspace-shell {
            position: relative;
            max-width: 1180px;
            margin: 0 auto;
            overflow: hidden;
            border: 1px solid rgba(4, 58, 126, 0.12);
            border-radius: 32px;
            padding: clamp(22px, 3vw, 34px);
            background:
                radial-gradient(circle at 14% 16%, rgba(4, 58, 126, 0.075), transparent 30%),
                radial-gradient(circle at 88% 84%, rgba(223, 164, 8, 0.045), transparent 28%),
                linear-gradient(145deg, rgba(255, 255, 255, 0.96), rgba(248, 251, 255, 0.88));
            box-shadow:
                0 34px 90px rgba(4, 58, 126, 0.13),
                0 12px 34px rgba(4, 58, 126, 0.07),
                inset 0 1px 0 rgba(255, 255, 255, 0.95);
            animation: zt-workspace-breathe 8s ease-in-out infinite;
        }

        .zt-workspace-shell::before,
        .zt-workspace-shell::after {
            content: "";
            position: absolute;
            pointer-events: none;
        }

        .zt-workspace-shell::before {
            inset: 16px;
            border: 1px solid rgba(4, 58, 126, 0.055);
            border-radius: 24px;
        }

        .zt-workspace-shell::after {
            top: 86px;
            right: 34px;
            width: 126px;
            height: 64px;
            border-top: 1px solid rgba(4, 58, 126, 0.08);
            border-bottom: 1px solid rgba(4, 58, 126, 0.06);
            background: linear-gradient(90deg, transparent, rgba(4, 58, 126, 0.025), transparent);
            opacity: 0.75;
        }

        .zt-workspace-toolbar {
            position: relative;
            z-index: 3;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: clamp(18px, 2.2vw, 26px);
            padding-bottom: clamp(18px, 2.3vw, 26px);
            border-bottom: 1px solid rgba(4, 58, 126, 0.08);
        }

        .zt-workspace-toolbar__status,
        .zt-workspace-toolbar__tools,
        .zt-workspace-toolbar__search {
            display: inline-flex;
            align-items: center;
        }

        .zt-workspace-toolbar__status {
            gap: 10px;
            color: #043a7e;
            font-size: 0.9rem;
            font-weight: 850;
            line-height: 1.2;
        }

        .zt-workspace-toolbar__status-copy {
            display: grid;
            gap: 3px;
        }

        .zt-workspace-toolbar__status-copy small {
            color: rgba(4, 58, 126, 0.56);
            font-size: 0.72rem;
            font-weight: 760;
        }

        .zt-workspace-toolbar__dot {
            width: 9px;
            height: 9px;
            flex: 0 0 auto;
            border-radius: 50%;
            background: #043a7e;
            box-shadow: 0 0 0 5px rgba(4, 58, 126, 0.1), 0 0 18px rgba(4, 58, 126, 0.22);
            animation: zt-workspace-status-pulse 2.8s ease-in-out infinite;
        }

        .zt-workspace-toolbar__tools {
            gap: 10px;
        }

        .zt-workspace-toolbar__search {
            min-width: clamp(160px, 20vw, 230px);
            min-height: 36px;
            gap: 8px;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 999px;
            padding: 0 13px;
            background: rgba(255, 255, 255, 0.74);
            color: rgba(4, 58, 126, 0.56);
            font-size: 0.78rem;
            font-weight: 750;
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.88);
        }

        .zt-workspace-toolbar__search i {
            color: rgba(4, 58, 126, 0.46);
            font-size: 0.8rem;
        }

        .zt-workspace-toolbar__profile {
            width: 34px;
            height: 34px;
            flex: 0 0 auto;
            border: 1px solid rgba(4, 58, 126, 0.16);
            border-radius: 50%;
            background:
                radial-gradient(circle at 34% 30%, #dfa408 0 18%, transparent 20%),
                linear-gradient(135deg, #0b5eb3, #043a7e);
            box-shadow: 0 10px 24px rgba(4, 58, 126, 0.16);
        }

        .zt-pcb-board {
            position: relative;
            z-index: 2;
            max-width: none;
            min-height: 0;
            margin: 0;
            border: 0;
            border-radius: 0;
            padding: 0;
            overflow: visible;
            background: transparent;
            box-shadow: none;
        }

        .zt-pcb-board::before,
        .zt-pcb-board::after {
            display: none;
        }

        .zt-pcb-traces {
            inset: 40px 22px 30px;
            width: calc(100% - 44px);
            height: calc(100% - 70px);
            opacity: 0.2;
        }

        .zt-pcb-trace {
            stroke: rgba(4, 58, 126, 0.2);
            stroke-width: 2;
        }

        .zt-pcb-pad {
            fill: rgba(223, 164, 8, 0.18);
            stroke: rgba(122, 98, 0, 0.14);
        }

        .zt-pcb-modules {
            position: relative;
            z-index: 2;
            display: grid;
            grid-template-columns: repeat(12, minmax(0, 1fr));
            grid-auto-rows: minmax(168px, auto);
            gap: clamp(18px, 2.2vw, 26px);
            align-items: stretch;
        }

        .zt-pcb-module {
            display: flex;
            min-height: 190px;
            flex-direction: column;
            overflow: hidden;
            border: 1px solid rgba(4, 58, 126, 0.13);
            border-radius: 26px;
            padding: clamp(18px, 2vw, 24px);
            background:
                linear-gradient(145deg, #ffffff 0%, #f8fbff 100%);
            color: #0f172a;
            box-shadow:
                0 22px 58px rgba(4, 58, 126, 0.1),
                0 4px 16px rgba(4, 58, 126, 0.05),
                inset 0 1px 0 rgba(255, 255, 255, 0.92);
            clip-path: none;
            animation: zt-workspace-card-float 6.8s ease-in-out infinite;
            transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .zt-pcb-module:hover,
        .zt-pcb-module:focus {
            color: #0f172a;
            border-color: rgba(4, 58, 126, 0.44);
            animation: none;
            transform: translateY(-4px);
            box-shadow:
                0 28px 68px rgba(4, 58, 126, 0.17),
                0 0 0 1px rgba(4, 58, 126, 0.08),
                0 0 34px rgba(4, 58, 126, 0.08);
        }

        .zt-pcb-module::before {
            inset: 0;
            border: 0;
            border-radius: inherit;
            background:
                linear-gradient(90deg, rgba(4, 58, 126, 0.12), transparent 48%, rgba(223, 164, 8, 0.1)),
                linear-gradient(rgba(4, 58, 126, 0.035) 1px, transparent 1px);
            background-size: auto, 100% 34px;
            opacity: 0.55;
            clip-path: none;
        }

        .zt-pcb-module::after {
            right: 22px;
            bottom: 20px;
            width: 48px;
            height: 22px;
            border-top: 1px solid rgba(4, 58, 126, 0.1);
            border-bottom: 1px solid rgba(4, 58, 126, 0.08);
            opacity: 0.8;
        }

        .zt-pcb-module__header {
            position: relative;
            z-index: 1;
            min-height: 0;
            align-items: flex-start;
            border: 1px solid rgba(4, 58, 126, 0.08);
            border-radius: 20px;
            padding: 12px;
            background:
                linear-gradient(135deg, rgba(4, 58, 126, 0.1), rgba(4, 58, 126, 0.035));
            color: #043a7e;
        }

        .zt-pcb-module:hover .zt-pcb-module__header,
        .zt-pcb-module:focus .zt-pcb-module__header {
            background:
                linear-gradient(135deg, rgba(4, 58, 126, 0.13), rgba(4, 58, 126, 0.045));
        }

        .zt-pcb-module__title-wrap {
            gap: 12px;
        }

        .zt-pcb-module__icon {
            width: 46px;
            height: 46px;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 16px;
            background: #043a7e;
            color: #dfa408;
            font-size: 1.15rem;
            box-shadow: 0 12px 26px rgba(4, 58, 126, 0.14);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }

        .zt-pcb-module:hover .zt-pcb-module__icon,
        .zt-pcb-module:focus .zt-pcb-module__icon {
            transform: translateY(-1px);
            box-shadow:
                0 14px 30px rgba(4, 58, 126, 0.18),
                0 0 0 5px rgba(223, 164, 8, 0.13),
                0 0 24px rgba(223, 164, 8, 0.18);
        }

        .zt-pcb-module__title {
            color: #043a7e;
            font-size: 1.02rem;
            font-weight: 900;
            line-height: 1.18;
        }

        .zt-pcb-module__code {
            border-color: rgba(4, 58, 126, 0.12);
            padding: 5px 8px;
            background: rgba(255, 255, 255, 0.78);
            color: rgba(4, 58, 126, 0.68);
            font-size: 0.6rem;
            letter-spacing: 0.04em;
            transition: border-color 0.3s ease, background 0.3s ease, color 0.3s ease;
        }

        .zt-pcb-module:hover .zt-pcb-module__code,
        .zt-pcb-module:focus .zt-pcb-module__code {
            border-color: rgba(223, 164, 8, 0.55);
            background: rgba(223, 164, 8, 0.12);
            color: #043a7e;
        }

        .zt-pcb-module__body {
            z-index: 1;
            flex: 1 1 auto;
            gap: 12px;
            padding: clamp(20px, 2.3vw, 28px) 4px 4px;
        }

        .zt-pcb-module__text {
            gap: 12px;
            color: rgba(15, 23, 42, 0.74);
            font-size: 0.94rem;
            font-weight: 750;
            line-height: 1.5;
        }

        .zt-pcb-module__text::before {
            width: 8px;
            height: 8px;
            background: rgba(4, 58, 126, 0.24);
            box-shadow: 0 0 0 5px rgba(4, 58, 126, 0.04);
        }

        .zt-pcb-module__status {
            top: 18px;
            right: 18px;
            font-size: 0.64rem;
        }

        .zt-pcb-module__status-dot {
            width: 8px;
            height: 8px;
            box-shadow: 0 0 0 4px rgba(223, 164, 8, 0.11), 0 0 16px rgba(223, 164, 8, 0.34);
        }

        .zt-pcb-module--hosting {
            grid-column: 1 / span 6;
            grid-row: 1 / span 3;
            min-height: 560px;
            border-color: rgba(4, 58, 126, 0.3);
            box-shadow:
                0 30px 78px rgba(4, 58, 126, 0.16),
                0 0 0 1px rgba(4, 58, 126, 0.06),
                inset 0 1px 0 rgba(255, 255, 255, 0.95);
        }

        .zt-pcb-module--hosting .zt-pcb-hosting-network {
            position: relative;
            z-index: 1;
            display: block;
            min-height: clamp(220px, 20vw, 286px);
            margin-top: auto;
            overflow: hidden;
            border-radius: 22px;
            pointer-events: none;
        }

        .zt-pcb-hosting-network__glow {
            position: absolute;
            inset: 16% 9% 6%;
            border-radius: 50%;
            background: radial-gradient(circle, rgba(4, 58, 126, 0.12), rgba(4, 58, 126, 0.045) 44%, transparent 72%);
            opacity: 0.72;
            filter: blur(10px);
            transform: scale(0.96);
            transition: opacity 0.28s ease;
            animation: zt-hosting-network-glow 6s ease-in-out infinite;
        }

        .zt-pcb-hosting-network__svg {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            overflow: visible;
        }

        .zt-pcb-hosting-network__line {
            fill: none;
            stroke: rgba(4, 58, 126, 0.2);
            stroke-width: 1.45;
            stroke-linecap: round;
            stroke-linejoin: round;
            transition: stroke 0.28s ease, opacity 0.28s ease;
        }

        .zt-pcb-hosting-network__node {
            fill: #ffffff;
            stroke: rgba(4, 58, 126, 0.24);
            stroke-width: 1.35;
            transition: stroke 0.28s ease, filter 0.28s ease;
        }

        .zt-pcb-hosting-network__pulse {
            fill: #dfa408;
            filter: drop-shadow(0 0 7px rgba(223, 164, 8, 0.62));
            transition: filter 0.28s ease;
        }

        .zt-pcb-module--hosting:hover .zt-pcb-hosting-network__glow,
        .zt-pcb-module--hosting:focus .zt-pcb-hosting-network__glow {
            opacity: 0.92;
        }

        .zt-pcb-module--hosting:hover .zt-pcb-hosting-network__line,
        .zt-pcb-module--hosting:focus .zt-pcb-hosting-network__line {
            stroke: rgba(4, 58, 126, 0.32);
        }

        .zt-pcb-module--hosting:hover .zt-pcb-hosting-network__node,
        .zt-pcb-module--hosting:focus .zt-pcb-hosting-network__node {
            stroke: rgba(4, 58, 126, 0.36);
            filter: drop-shadow(0 0 7px rgba(4, 58, 126, 0.13));
        }

        .zt-pcb-module--hosting:hover .zt-pcb-hosting-network__pulse,
        .zt-pcb-module--hosting:focus .zt-pcb-hosting-network__pulse {
            filter: drop-shadow(0 0 10px rgba(223, 164, 8, 0.78));
        }

        .zt-pcb-module--billing {
            grid-column: 7 / span 6;
            grid-row: 1;
            margin-top: 0;
        }

        .zt-pcb-module--support {
            grid-column: 7 / span 6;
            grid-row: 2;
            margin-top: 0;
        }

        .zt-pcb-module--account {
            grid-column: 7 / span 6;
            grid-row: 3;
            margin-top: 0;
        }

        @keyframes zt-workspace-breathe {
            0%, 100% {
                box-shadow:
                    0 34px 90px rgba(4, 58, 126, 0.13),
                    0 12px 34px rgba(4, 58, 126, 0.07),
                    inset 0 1px 0 rgba(255, 255, 255, 0.95);
            }

            50% {
                box-shadow:
                    0 38px 98px rgba(4, 58, 126, 0.15),
                    0 14px 38px rgba(4, 58, 126, 0.08),
                    inset 0 1px 0 rgba(255, 255, 255, 0.95);
            }
        }

        @keyframes zt-workspace-card-float {
            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-2px);
            }
        }

        @keyframes zt-hosting-network-glow {
            0%, 100% {
                transform: scale(0.96);
                opacity: 0.62;
            }

            50% {
                transform: scale(1.04);
                opacity: 0.82;
            }
        }

        @media (max-width: 991.98px) {
            .zt-workspace-shell {
                border-radius: 28px;
            }

            .zt-pcb-modules {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                grid-auto-rows: auto;
            }

            .zt-pcb-module,
            .zt-pcb-module--hosting,
            .zt-pcb-module--billing,
            .zt-pcb-module--support,
            .zt-pcb-module--account {
                grid-column: auto;
                grid-row: auto;
                min-height: 0;
                margin-top: 0;
            }

            .zt-pcb-module--hosting {
                grid-column: 1 / -1;
            }
        }

        @media (max-width: 575.98px) {
            .zt-control-network {
                padding: 56px 14px 64px;
            }

            .zt-workspace-shell {
                border-radius: 24px;
                padding: 18px;
            }

            .zt-workspace-toolbar {
                align-items: flex-start;
                flex-direction: column;
                gap: 12px;
            }

            .zt-workspace-toolbar__tools,
            .zt-workspace-toolbar__search {
                width: 100%;
            }

            .zt-workspace-toolbar__search {
                min-width: 0;
            }

            .zt-workspace-toolbar__profile {
                position: absolute;
                top: 0;
                right: 0;
            }

            .zt-pcb-traces {
                display: none;
            }

            .zt-pcb-modules {
                grid-template-columns: 1fr;
                gap: 16px;
            }

            .zt-pcb-module {
                border-radius: 22px;
                padding: 18px;
            }

            .zt-pcb-module__header {
                display: grid;
                grid-template-columns: 46px minmax(0, 1fr);
                align-items: center;
                gap: 12px;
                border-radius: 18px;
                padding: 12px 58px 12px 12px;
            }

            .zt-pcb-module__title-wrap {
                display: contents;
            }

            .zt-pcb-module__icon {
                grid-column: 1;
            }

            .zt-pcb-module__title {
                grid-column: 2;
                overflow-wrap: normal;
                word-break: normal;
            }

            .zt-pcb-module__code {
                position: absolute;
                top: 12px;
                right: 12px;
                display: inline-flex;
                padding: 4px 7px;
                font-size: 0.55rem;
            }

            .zt-pcb-module__status {
                top: 42px;
                right: 14px;
                font-size: 0.58rem;
            }

            .zt-pcb-module__status-dot {
                width: 7px;
                height: 7px;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            .zt-workspace-shell,
            .zt-pcb-module,
            .zt-workspace-toolbar__dot,
            .zt-pcb-module__status-dot,
            .zt-pcb-hosting-network__glow {
                animation: none;
            }

            .zt-pcb-hosting-network__pulse {
                display: none;
            }
        }

        .zt-launch-section {
            isolation: isolate;
            overflow: hidden;
            padding: clamp(70px, 6.5vw, 96px) clamp(18px, 4vw, 56px);
            background:
                radial-gradient(circle at 12% 10%, rgba(4, 58, 126, 0.14), transparent 30%),
                radial-gradient(circle at 88% 74%, rgba(4, 58, 126, 0.1), transparent 34%),
                radial-gradient(circle at 70% 24%, rgba(223, 164, 8, 0.075), transparent 30%),
                #cee9ea;
            background-size: auto, auto, auto, auto;
        }

        .zt-launch-section::before,
        .zt-launch-section::after {
            content: "";
            position: absolute;
            pointer-events: none;
        }

        .zt-launch-section::before {
            inset: 0;
            z-index: 0;
            background-image:
                linear-gradient(rgba(4, 58, 126, 0.035) 1px, transparent 1px),
                linear-gradient(90deg, rgba(4, 58, 126, 0.035) 1px, transparent 1px);
            background-size: 72px 72px;
            mask-image: radial-gradient(circle at 50% 38%, rgba(0, 0, 0, 0.58), transparent 74%);
            opacity: 0.7;
        }

        .zt-launch-section::after {
            top: 14%;
            left: 50%;
            z-index: 0;
            width: min(72vw, 820px);
            height: min(42vw, 420px);
            border-radius: 999px;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.42), transparent 70%);
            filter: blur(12px);
            transform: translateX(-50%);
            animation: zt-launch-ambient 12s ease-in-out infinite;
        }

        .zt-launch-section > * {
            position: relative;
            z-index: 1;
        }

        .zt-launch-header {
            max-width: 760px;
            margin-bottom: clamp(26px, 3vw, 38px);
        }

        .zt-launch-header h2,
        .zt-service-promo__content h2 {
            color: #043a7e;
        }

        .zt-launch-section .zt-launch-header h2,
        .zt-launch-section .zt-service-promo__content h2 {
            color: #043a7e;
        }

        .zt-launch-header p,
        .zt-service-promo__content p {
            color: rgba(4, 58, 126, 0.74);
        }

        .zt-launch-path {
            position: relative;
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: clamp(16px, 2vw, 24px);
            max-width: 1180px;
            margin: 0 auto;
            align-items: stretch;
            padding: 14px 0 4px;
        }

        .zt-launch-path::before,
        .zt-launch-path::after {
            display: none;
        }

        .zt-launch-lines {
            position: absolute;
            top: 46px;
            right: calc(12.5% - 6px);
            left: calc(12.5% - 6px);
            z-index: 0;
            display: block;
            width: auto;
            height: 18px;
            overflow: visible;
            pointer-events: none;
        }

        .zt-launch-line {
            fill: none;
            stroke: rgba(4, 58, 126, 0.28);
            stroke-width: 2;
            stroke-linecap: round;
            stroke-dasharray: 880;
            stroke-dashoffset: 880;
            filter: drop-shadow(0 0 10px rgba(4, 58, 126, 0.11));
            animation: zt-launch-line-fill 8s ease-in-out infinite;
        }

        .zt-launch-pulse {
            fill: #dfa408;
            filter: drop-shadow(0 0 9px rgba(223, 164, 8, 0.62));
        }

        .zt-launch-step {
            position: relative;
            z-index: 2;
            display: grid;
            min-height: 146px;
            height: 100%;
            grid-template-columns: 48px minmax(0, 1fr);
            gap: 10px 12px;
            align-items: start;
            border: 1px solid rgba(4, 58, 126, 0.13);
            border-radius: 22px;
            padding: 20px 18px 18px;
            background:
                linear-gradient(145deg, rgba(255, 255, 255, 0.96), rgba(248, 251, 255, 0.92));
            color: #043a7e;
            box-shadow:
                0 16px 36px rgba(4, 58, 126, 0.08),
                inset 0 1px 0 rgba(255, 255, 255, 0.9);
            transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
            animation: zt-launch-step-active 8s ease-in-out infinite;
        }

        .zt-launch-step::before {
            display: none;
        }

        .zt-launch-step--account::before {
            display: none;
        }

        .zt-launch-step:hover,
        .zt-launch-step:focus {
            border-color: rgba(4, 58, 126, 0.52);
            color: #043a7e;
            text-decoration: none;
            animation: none;
            transform: translateY(-4px);
            box-shadow:
                0 24px 48px rgba(4, 58, 126, 0.15),
                0 0 0 1px rgba(4, 58, 126, 0.09),
                0 0 34px rgba(4, 58, 126, 0.1);
        }

        .zt-launch-step:hover::before,
        .zt-launch-step:focus::before {
            background: #043a7e;
            box-shadow: 0 0 0 4px rgba(4, 58, 126, 0.08), 0 0 20px rgba(4, 58, 126, 0.2);
            opacity: 1;
        }

        .zt-launch-path:hover::before,
        .zt-launch-path:hover::after,
        .zt-launch-path:hover .zt-launch-line,
        .zt-launch-path:hover .zt-launch-step,
        .zt-launch-path:hover .zt-launch-step::before,
        .zt-launch-path:hover .zt-launch-step__count {
            animation-play-state: paused;
        }

        .zt-launch-step__count {
            position: static;
            display: inline-flex;
            width: 46px;
            height: 46px;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(223, 164, 8, 0.36);
            border-radius: 16px;
            background: rgba(223, 164, 8, 0.1);
            color: #7a6200;
            font-size: 0.92rem;
            font-weight: 950;
            letter-spacing: 0.06em;
            box-shadow: 0 10px 22px rgba(223, 164, 8, 0.08);
            animation: zt-launch-count-active 8s ease-in-out infinite;
        }

        .zt-launch-step--verify,
        .zt-launch-step--verify::before,
        .zt-launch-step--verify .zt-launch-step__count {
            animation-delay: 1.7s;
        }

        .zt-launch-step--service,
        .zt-launch-step--service::before,
        .zt-launch-step--service .zt-launch-step__count {
            animation-delay: 3.4s;
        }

        .zt-launch-step--manage,
        .zt-launch-step--manage::before,
        .zt-launch-step--manage .zt-launch-step__count {
            animation-delay: 5.1s;
        }

        .zt-launch-step__icon {
            display: inline-flex;
            width: 34px;
            height: 34px;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(4, 58, 126, 0.1);
            border-radius: 12px;
            background: rgba(4, 58, 126, 0.06);
            color: #043a7e;
            font-size: 0.9rem;
        }

        .zt-launch-step strong {
            grid-column: 2;
            color: #043a7e;
            font-size: 0.98rem;
            font-weight: 900;
            line-height: 1.24;
        }

        .zt-launch-step > span:last-child {
            grid-column: 1 / -1;
            color: rgba(4, 58, 126, 0.68);
            font-size: 0.86rem;
            font-weight: 700;
            line-height: 1.5;
        }

        .zt-launch-divider {
            max-width: 980px;
            height: 1px;
            margin: clamp(34px, 4vw, 50px) auto clamp(38px, 4.5vw, 58px);
            background: linear-gradient(90deg, transparent, rgba(4, 58, 126, 0.2), rgba(223, 164, 8, 0.42), rgba(4, 58, 126, 0.2), transparent);
            opacity: 0.78;
        }

        .zt-service-promo {
            display: grid;
            max-width: 1160px;
            margin: 0 auto;
            grid-template-columns: minmax(0, 0.82fr) minmax(420px, 1.18fr);
            gap: clamp(34px, 4vw, 58px);
            align-items: center;
            border: 0;
            border-radius: 0;
            padding: 0;
            background: transparent;
            box-shadow: none;
        }

        .zt-service-promo__content {
            border: 1px solid rgba(4, 58, 126, 0.12);
            border-radius: 28px;
            padding: clamp(26px, 3vw, 38px);
            background: rgba(255, 255, 255, 0.7);
            box-shadow:
                0 24px 60px rgba(4, 58, 126, 0.1),
                inset 0 1px 0 rgba(255, 255, 255, 0.82);
        }

        .zt-service-chips {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 16px;
            align-items: stretch;
            align-content: center;
            justify-items: stretch;
            min-height: 0;
            padding: 0;
        }

        .zt-service-chip,
        .zt-service-chip--one,
        .zt-service-chip--two,
        .zt-service-chip--three,
        .zt-service-chip--four,
        .zt-service-chip--five,
        .zt-service-chip--six,
        .zt-service-chip--seven {
            grid-column: auto;
            justify-self: stretch;
            width: 100%;
            max-width: none;
        }

        .zt-service-chip--seven {
            grid-column: 1 / -1;
            width: calc(50% - 9px);
            justify-self: center;
        }

        .zt-service-chip {
            min-height: 58px;
            justify-content: flex-start;
            gap: 11px;
            border: 1px solid rgba(4, 58, 126, 0.13);
            border-radius: 18px;
            padding: 13px 16px;
            background: #ffffff;
            color: #043a7e;
            font-size: 0.9rem;
            font-weight: 900;
            line-height: 1.2;
            box-shadow: 0 18px 36px rgba(4, 58, 126, 0.08);
            animation: zt-service-chip-float 7s ease-in-out infinite;
            transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .zt-service-chip--two,
        .zt-service-chip--five {
            animation-delay: 0.8s;
        }

        .zt-service-chip--three,
        .zt-service-chip--six {
            animation-delay: 1.5s;
        }

        .zt-service-chip--four,
        .zt-service-chip--seven {
            animation-delay: 2.2s;
        }

        .zt-service-chip i {
            display: inline-grid;
            width: 30px;
            height: 30px;
            flex: 0 0 auto;
            place-items: center;
            border-radius: 999px;
            background: rgba(223, 164, 8, 0.12);
            color: #dfa408;
            font-size: 0.92rem;
            transition: box-shadow 0.3s ease, background 0.3s ease;
        }

        .zt-service-chip:hover {
            border-color: rgba(4, 58, 126, 0.42);
            animation: none;
            transform: translateY(-4px);
            box-shadow:
                0 24px 48px rgba(4, 58, 126, 0.14),
                0 0 0 1px rgba(4, 58, 126, 0.07);
        }

        .zt-service-chip:hover i {
            background: rgba(223, 164, 8, 0.18);
            box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 0 22px rgba(223, 164, 8, 0.18);
        }

        @keyframes zt-launch-step-active {
            0%, 15% {
                border-color: rgba(4, 58, 126, 0.52);
                transform: translateY(-3px);
                box-shadow:
                    0 22px 46px rgba(4, 58, 126, 0.15),
                    0 0 0 1px rgba(4, 58, 126, 0.08),
                    0 0 28px rgba(4, 58, 126, 0.1);
            }

            24%, 100% {
                border-color: rgba(4, 58, 126, 0.13);
                transform: translateY(0);
                box-shadow:
                    0 16px 36px rgba(4, 58, 126, 0.08),
                    inset 0 1px 0 rgba(255, 255, 255, 0.9);
            }
        }

        @keyframes zt-launch-count-active {
            0%, 15% {
                border-color: rgba(223, 164, 8, 0.72);
                background: rgba(223, 164, 8, 0.18);
                color: #043a7e;
                box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 14px 26px rgba(223, 164, 8, 0.12);
            }

            24%, 100% {
                border-color: rgba(223, 164, 8, 0.36);
                background: rgba(223, 164, 8, 0.1);
                color: #7a6200;
                box-shadow: 0 10px 22px rgba(223, 164, 8, 0.08);
            }
        }

        @keyframes zt-launch-connector-active {
            0%, 18% {
                background: #043a7e;
                box-shadow: 0 0 0 4px rgba(4, 58, 126, 0.08), 0 0 20px rgba(4, 58, 126, 0.2);
                opacity: 1;
            }

            28%, 100% {
                background: rgba(4, 58, 126, 0.28);
                box-shadow: 0 0 14px rgba(4, 58, 126, 0.08);
                opacity: 0.58;
            }
        }

        @keyframes zt-launch-line-breathe {
            0%, 100% {
                opacity: 0.55;
                box-shadow: 0 0 18px rgba(4, 58, 126, 0.1);
            }

            50% {
                opacity: 0.9;
                box-shadow: 0 0 24px rgba(4, 58, 126, 0.16);
            }
        }

        @keyframes zt-launch-line-fill {
            0%, 10% {
                stroke-dashoffset: 880;
                opacity: 0.34;
            }

            68% {
                stroke-dashoffset: 0;
                opacity: 0.92;
            }

            82%, 100% {
                stroke-dashoffset: 0;
                opacity: 0.42;
            }
        }

        @keyframes zt-launch-ambient {
            0%, 100% {
                opacity: 0.42;
                transform: translateX(-50%) scale(0.96);
            }

            50% {
                opacity: 0.68;
                transform: translateX(-50%) scale(1.04);
            }
        }

        @keyframes zt-launch-pulse-travel {
            0%, 12% {
                transform: translateX(0);
                opacity: 1;
            }

            74% {
                transform: translateX(calc(75vw - 42px));
                opacity: 1;
            }

            82%, 100% {
                transform: translateX(calc(75vw - 42px));
                opacity: 0;
            }
        }

        @keyframes zt-service-chip-float {
            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-3px);
            }
        }

        @media (min-width: 1180px) {
            @keyframes zt-launch-pulse-travel {
                0%, 12% {
                    transform: translateX(0);
                    opacity: 1;
                }

                74% {
                    transform: translateX(850px);
                    opacity: 1;
                }

                82%, 100% {
                    transform: translateX(850px);
                    opacity: 0;
                }
            }
        }

        @media (max-width: 991.98px) {
            .zt-launch-path {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .zt-launch-path::before,
            .zt-launch-path::after,
            .zt-launch-lines,
            .zt-launch-step::before {
                display: none;
            }

            .zt-service-promo {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 575.98px) {
            .zt-launch-section {
                padding: 58px 18px 66px;
            }

            .zt-launch-path,
            .zt-service-chips {
                grid-template-columns: 1fr;
            }

            .zt-launch-step {
                min-height: 0;
                height: auto;
                padding: 18px 16px;
            }

            .zt-service-promo__content {
                border-radius: 24px;
                padding: 24px 18px;
            }

            .zt-service-chip,
            .zt-service-chip--seven {
                grid-column: auto;
                width: 100%;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            .zt-launch-section::after,
            .zt-launch-line,
            .zt-launch-path::before,
            .zt-launch-path::after,
            .zt-launch-step,
            .zt-launch-step::before,
            .zt-launch-step__count,
            .zt-service-chip {
                animation: none;
            }

            .zt-launch-pulse {
                display: none;
            }
        }

        @property --zt-review-count {
            syntax: "<integer>";
            initial-value: 0;
            inherits: false;
        }

        .zt-review-panel {
            padding: clamp(58px, 5.2vw, 84px) 0 clamp(82px, 7vw, 108px);
        }

        .zt-review-panel .zt-support-heading {
            margin-bottom: clamp(24px, 3vw, 38px);
        }

        .zt-review-panel .zt-support-heading h2 {
            color: #043a7e;
            max-width: 720px;
            font-size: clamp(1.85rem, 2.55vw, 2.65rem);
            line-height: 1.08;
        }

        .zt-review-marquee {
            padding: 14px 0 22px;
        }

        .zt-review-marquee::before {
            background: linear-gradient(90deg, #ffffff 0%, rgba(255, 255, 255, 0.88) 34%, rgba(255, 255, 255, 0) 100%);
        }

        .zt-review-marquee::after {
            background: linear-gradient(270deg, #ffffff 0%, rgba(255, 255, 255, 0.88) 34%, rgba(255, 255, 255, 0) 100%);
        }

        .zt-review-track {
            gap: 22px;
            animation: zt-review-scroll 40s linear infinite;
        }

        .zt-review-marquee:hover .zt-review-track,
        .zt-review-marquee:focus-within .zt-review-track {
            animation-play-state: paused;
        }

        .zt-review-card {
            min-height: 210px;
            border-color: rgba(4, 58, 126, 0.1);
            border-radius: 24px;
            padding: 24px;
            background: #ffffff;
            box-shadow:
                0 14px 36px rgba(4, 58, 126, 0.07),
                inset 0 1px 0 rgba(255, 255, 255, 0.9);
            transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .zt-review-card:hover,
        .zt-review-card:focus-within {
            border-color: rgba(4, 58, 126, 0.48);
            transform: translateY(-4px);
            box-shadow:
                0 24px 54px rgba(4, 58, 126, 0.14),
                0 0 0 1px rgba(4, 58, 126, 0.06);
        }

        .zt-review-card blockquote {
            margin: 18px 0 20px;
            color: rgba(4, 58, 126, 0.8);
            font-size: clamp(1.02rem, 1.1vw, 1.12rem);
            line-height: 1.62;
        }

        .zt-review-card figcaption {
            color: #043a7e;
        }

        .zt-review-metrics {
            display: grid;
            max-width: 1180px;
            grid-template-columns: repeat(5, minmax(0, 1fr));
            gap: 16px;
            margin: clamp(46px, 5vw, 68px) auto 0;
            padding: 0 24px;
        }

        .zt-review-metric {
            display: grid;
            min-height: 152px;
            align-content: center;
            justify-items: start;
            gap: 9px;
            border: 1px solid rgba(4, 58, 126, 0.11);
            border-radius: 22px;
            padding: 20px;
            background: #ffffff;
            box-shadow:
                0 18px 42px rgba(4, 58, 126, 0.08),
                inset 0 1px 0 rgba(255, 255, 255, 0.9);
            opacity: 0;
            transform: translateY(10px);
            animation: zt-review-metric-in 0.72s ease forwards;
            transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .zt-review-metric:nth-child(2) {
            animation-delay: 0.08s;
        }

        .zt-review-metric:nth-child(3) {
            animation-delay: 0.16s;
        }

        .zt-review-metric:nth-child(4) {
            animation-delay: 0.24s;
        }

        .zt-review-metric:nth-child(5) {
            animation-delay: 0.32s;
        }

        .zt-review-metric:hover {
            border-color: rgba(4, 58, 126, 0.48);
            transform: translateY(-3px);
            box-shadow:
                0 24px 50px rgba(4, 58, 126, 0.14),
                0 0 0 1px rgba(4, 58, 126, 0.06);
        }

        .zt-review-metric__icon {
            display: inline-grid;
            width: 34px;
            height: 34px;
            place-items: center;
            border-radius: 12px;
            background: rgba(223, 164, 8, 0.12);
            color: #dfa408;
            font-size: 0.98rem;
            transition: box-shadow 0.3s ease, filter 0.3s ease;
        }

        .zt-review-metric:hover .zt-review-metric__icon {
            filter: brightness(1.08);
            box-shadow: 0 0 0 5px rgba(223, 164, 8, 0.12), 0 0 22px rgba(223, 164, 8, 0.16);
        }

        .zt-review-metric__number {
            position: relative;
            display: inline-flex;
            min-height: 42px;
            align-items: flex-end;
            color: #043a7e;
            font-size: clamp(1.7rem, 2.5vw, 2.35rem);
            font-weight: 950;
            line-height: 1;
            letter-spacing: 0;
        }

        .zt-review-metric__label {
            color: rgba(4, 58, 126, 0.68);
            font-size: 0.82rem;
            font-weight: 850;
            line-height: 1.35;
        }

        .zt-review-metric__count {
            display: none;
        }

        @supports (animation-timeline: view()) {
            .zt-review-metric__number:has(.zt-review-metric__count) .zt-review-metric__static {
                position: absolute;
                width: 1px;
                height: 1px;
                overflow: hidden;
                clip: rect(0, 0, 0, 0);
                white-space: nowrap;
            }

            .zt-review-metric__count {
                display: inline-flex;
                --zt-review-count: 0;
                animation-duration: 1.45s;
                animation-fill-mode: both;
                animation-timing-function: cubic-bezier(0.2, 0.8, 0.2, 1);
                animation-timeline: view();
                animation-range: entry 15% cover 35%;
            }

            .zt-review-metric__count::before {
                counter-reset: zt-review-count var(--zt-review-count);
                content: counter(zt-review-count);
            }

            .zt-review-metric__count::after {
                content: attr(data-suffix);
            }

            .zt-review-metric__count--100 {
                animation-name: zt-review-count-100;
            }

            .zt-review-metric__count--250 {
                animation-name: zt-review-count-250;
            }

            .zt-review-metric__count--98 {
                animation-name: zt-review-count-98;
            }
        }

        .zt-review-metric__count {
            display: inline-flex;
            animation: none;
        }

        .zt-review-metric__count::before,
        .zt-review-metric__count::after {
            content: none;
        }

        @keyframes zt-review-count-100 {
            from { --zt-review-count: 0; }
            to { --zt-review-count: 100; }
        }

        @keyframes zt-review-count-250 {
            from { --zt-review-count: 0; }
            to { --zt-review-count: 250; }
        }

        @keyframes zt-review-count-98 {
            from { --zt-review-count: 0; }
            to { --zt-review-count: 98; }
        }

        @keyframes zt-review-metric-in {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 991.98px) {
            .zt-review-card {
                min-height: 210px;
            }

            .zt-review-metrics {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
        }

        @media (max-width: 575.98px) {
            .zt-review-card {
                min-height: 206px;
                padding: 22px;
            }

            .zt-review-metrics {
                grid-template-columns: 1fr;
                gap: 14px;
                margin-top: 38px;
                padding: 0 18px;
            }

            .zt-review-metric {
                min-height: 132px;
                border-radius: 20px;
                padding: 18px;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            .zt-review-track,
            .zt-review-metric,
            .zt-review-metric__count {
                animation: none;
            }

            .zt-review-metric {
                opacity: 1;
                transform: none;
            }
        }

        .zt-portal-hero {
            margin-bottom: 18px;
        }

        .zt-portal-hero__inner {
            min-height: 0;
            gap: clamp(20px, 3vw, 30px);
            padding-top: clamp(28px, 4vw, 44px);
            padding-bottom: 14px;
        }

        .zt-portal-hero__copy {
            margin-top: 14px;
        }

        .zt-portal-hero__actions {
            margin-top: 20px;
        }

        .zt-portal-hero__trust {
            margin-bottom: 14px;
        }

        .zt-control-network {
            padding-top: clamp(54px, 5.8vw, 86px);
            padding-bottom: clamp(58px, 6vw, 92px);
        }

        .zt-control-header {
            margin-bottom: clamp(22px, 3vw, 36px);
        }

        .zt-workspace-shell {
            padding: clamp(18px, 2.4vw, 30px);
        }

        .zt-workspace-toolbar {
            margin-bottom: clamp(14px, 1.8vw, 22px);
            padding-bottom: clamp(14px, 1.8vw, 22px);
        }

        .zt-launch-section {
            padding-top: clamp(58px, 5.8vw, 92px);
            padding-bottom: clamp(60px, 6vw, 96px);
        }

        .zt-launch-header {
            margin-bottom: clamp(24px, 3.2vw, 42px);
        }

        .zt-launch-divider {
            margin: clamp(36px, 4vw, 54px) auto;
        }

        .zt-service-promo {
            gap: clamp(28px, 3.5vw, 48px);
            padding: clamp(30px, 3.6vw, 46px);
        }

        .zt-review-panel {
            padding-top: clamp(60px, 6vw, 96px);
            padding-bottom: clamp(62px, 6vw, 96px);
        }

        .zt-review-panel .zt-support-heading {
            margin-bottom: clamp(28px, 3.8vw, 48px);
        }

        .zt-review-metrics {
            margin-top: clamp(30px, 3.8vw, 48px);
        }

        .zt-resource-command {
            padding-top: clamp(60px, 6vw, 94px);
            padding-bottom: clamp(56px, 5.6vw, 86px);
        }

        .zt-resource-command__heading {
            margin-bottom: clamp(26px, 3.6vw, 44px);
        }

        .zt-faq-panel {
            padding-bottom: clamp(60px, 6vw, 92px);
        }

        .zt-faq-hero {
            padding-top: clamp(56px, 6vw, 88px);
            padding-bottom: clamp(82px, 8vw, 118px);
        }

        .zt-faq-shell {
            margin-top: clamp(-66px, -5vw, -42px);
            padding: clamp(24px, 3.4vw, 40px);
        }

        .zt-faq-support {
            margin-top: clamp(26px, 3vw, 40px);
        }

        @media (max-width: 575.98px) {
            .zt-portal-hero__inner {
                padding-top: 20px;
                padding-bottom: 12px;
            }

            .zt-control-network {
                padding-top: 44px;
                padding-bottom: 50px;
            }

            .zt-launch-section {
                padding-top: 50px;
                padding-bottom: 58px;
            }

            .zt-review-panel {
                padding-top: 52px;
                padding-bottom: 54px;
            }

            .zt-resource-command {
                padding-top: 54px;
                padding-bottom: 56px;
            }

            .zt-faq-panel {
                padding-bottom: 56px;
            }

            .zt-faq-hero {
                padding-top: 54px;
                padding-bottom: 86px;
            }

            .zt-faq-shell {
                padding: 18px;
            }
        }
    </style>
    {/literal}
    <section class="zt-portal-hero" aria-labelledby="zt-portal-hero-title">
        <div class="zt-portal-hero__bg" aria-hidden="true">
            <span class="zt-portal-hero__glow zt-portal-hero__glow--one"></span>
            <span class="zt-portal-hero__glow zt-portal-hero__glow--two"></span>
            <span class="zt-portal-hero__node zt-portal-hero__node--one"></span>
            <span class="zt-portal-hero__node zt-portal-hero__node--two"></span>
            <span class="zt-portal-hero__node zt-portal-hero__node--three"></span>
            <span class="zt-portal-hero__node zt-portal-hero__node--four"></span>
        </div>

        <div class="zt-portal-hero__inner">
            <div class="zt-portal-hero__content">
                <div class="zt-portal-hero__eyebrow">
                    <span>Customer Portal</span>
                </div>

                <h1 id="zt-portal-hero-title" class="zt-portal-hero__title">
                    Manage Your Services with Confidence
                </h1>

                <div class="zt-portal-hero__copy">
                    <p>
                        Securely access your services, invoices, support tickets, account details and customer care tools whenever you need them.
                    </p>
                </div>

                <div class="zt-portal-hero__actions" aria-label="Customer portal actions">
                    <a class="zt-portal-hero__button zt-portal-hero__button--primary" href="clientarea.php">
                        Login
                    </a>
                    <a class="zt-portal-hero__button zt-portal-hero__button--secondary" href="register.php">
                        Create Account
                    </a>
                </div>
            </div>

            <div class="zt-portal-hero__visual" aria-hidden="true">
                <figure class="zt-portal-hero__image-wrap">
                    <img class="zt-portal-hero__image" src="{$WEB_ROOT}/templates/{$template}/img/Picture6.png" alt="" loading="eager" decoding="async">
                </figure>
            </div>
        </div>

        <div class="zt-portal-hero__trust" aria-label="Portal trust highlights">
            <span><i class="fal fa-headset" aria-hidden="true"></i> 24/7 Support</span>
            <span><i class="fal fa-shield-check" aria-hidden="true"></i> Secure Account</span>
            <span><i class="fal fa-bolt" aria-hidden="true"></i> Fast Response</span>
            <span><i class="fal fa-handshake" aria-hidden="true"></i> Trusted Partner</span>
        </div>
    </section>

    <section class="zt-control-network" aria-labelledby="zt-control-network-title">
        <div class="zt-control-header">
            <h2 id="zt-control-network-title">One Portal. Complete Control.</h2>
            <p>
                Everything you need, intelligently connected in one seamless workspace.
            </p>
        </div>

        <div class="zt-workspace-shell" aria-label="Zenvik portal workspace">
            <div class="zt-workspace-toolbar" aria-hidden="true">
                <div class="zt-workspace-toolbar__status">
                    <span class="zt-workspace-toolbar__dot"></span>
                    <span class="zt-workspace-toolbar__status-copy">
                        <span>Zenvik Portal Workspace</span>
                        <small>Connected &amp; Ready</small>
                    </span>
                </div>
                <div class="zt-workspace-toolbar__tools">
                    <span class="zt-workspace-toolbar__search">
                        <i class="fal fa-search"></i>
                        <span>Search workspace</span>
                    </span>
                    <span class="zt-workspace-toolbar__profile"></span>
                </div>
            </div>

            <div class="zt-pcb-board" aria-label="Customer portal control board">
                <svg class="zt-pcb-traces" viewBox="0 0 1180 560" preserveAspectRatio="none" aria-hidden="true" focusable="false">
                    <path class="zt-pcb-trace" d="M68 96 H302 q18 0 18 18 V178 h88"></path>
                    <path class="zt-pcb-trace" d="M830 78 h206 q22 0 22 22 v92 h58"></path>
                    <path class="zt-pcb-trace" d="M96 416 h218 q24 0 24-24 v-74 h120"></path>
                    <path class="zt-pcb-trace" d="M704 446 h250 q20 0 20-20 V310 h98"></path>
                    <path class="zt-pcb-trace" d="M512 116 v116 q0 18 18 18 h122"></path>
                    <path class="zt-pcb-trace" d="M592 498 v-116 q0-18 18-18 h118"></path>
                    <rect class="zt-pcb-pad" x="54" y="84" width="20" height="20" rx="6"></rect>
                    <rect class="zt-pcb-pad" x="1116" y="182" width="18" height="18" rx="6"></rect>
                    <rect class="zt-pcb-pad" x="82" y="404" width="18" height="18" rx="6"></rect>
                    <rect class="zt-pcb-pad" x="1070" y="300" width="20" height="20" rx="6"></rect>
                    <circle class="zt-pcb-pad" cx="512" cy="116" r="9"></circle>
                    <circle class="zt-pcb-pad" cx="592" cy="498" r="9"></circle>
                </svg>

                <div class="zt-pcb-modules">
                <a class="zt-pcb-module zt-pcb-module--hosting" href="clientarea.php?action=services" aria-describedby="zt-pcb-hosting-help">
                    <span class="zt-pcb-module__status">
                        <span class="zt-pcb-module__status-dot" aria-hidden="true"></span>
                        <span>Online</span>
                    </span>
                    <span class="zt-pcb-module__header">
                        <span class="zt-pcb-module__title-wrap">
                            <span class="zt-pcb-module__icon" aria-hidden="true"><i class="fal fa-cloud"></i></span>
                            <span class="zt-pcb-module__title">Hosting &amp; Domains</span>
                        </span>
                        <span class="zt-pcb-module__code">CORE-01</span>
                    </span>
                    <span class="zt-pcb-module__body" id="zt-pcb-hosting-help">
                        <span class="zt-pcb-module__text">Manage hosting plans</span>
                        <span class="zt-pcb-module__text">Manage, transfer or renew domains</span>
                    </span>
                    <span class="zt-pcb-hosting-network" aria-hidden="true">
                        <span class="zt-pcb-hosting-network__glow"></span>
                        <svg class="zt-pcb-hosting-network__svg" viewBox="0 0 520 240" preserveAspectRatio="none" focusable="false">
                            <path class="zt-pcb-hosting-network__line" d="M44 62 H154 q18 0 18 18 v36 h96 q18 0 18 18 v42 h156"></path>
                            <path class="zt-pcb-hosting-network__line" d="M88 172 h88 q16 0 16-16 v-48 h116 q16 0 16-16 V70 h112"></path>
                            <path class="zt-pcb-hosting-network__line" d="M126 112 h66 q14 0 14 14 v58 h88 q14 0 14-14 v-28 h86"></path>
                            <circle class="zt-pcb-hosting-network__node" cx="44" cy="62" r="5"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="172" cy="116" r="5"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="286" cy="176" r="5"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="442" cy="176" r="5"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="88" cy="172" r="4"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="324" cy="70" r="4"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="436" cy="70" r="5"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="126" cy="112" r="4"></circle>
                            <circle class="zt-pcb-hosting-network__node" cx="394" cy="142" r="4"></circle>
                            <circle class="zt-pcb-hosting-network__pulse" r="4">
                                <animateMotion dur="4.6s" repeatCount="indefinite" path="M44 62 H154 q18 0 18 18 v36 h96 q18 0 18 18 v42 h156"></animateMotion>
                            </circle>
                        </svg>
                    </span>
                </a>

                <a class="zt-pcb-module zt-pcb-module--billing" href="clientarea.php?action=invoices" aria-describedby="zt-pcb-billing-help">
                    <span class="zt-pcb-module__status">
                        <span class="zt-pcb-module__status-dot" aria-hidden="true"></span>
                        <span>Secure</span>
                    </span>
                    <span class="zt-pcb-module__header">
                        <span class="zt-pcb-module__title-wrap">
                            <span class="zt-pcb-module__icon" aria-hidden="true"><i class="fal fa-credit-card"></i></span>
                            <span class="zt-pcb-module__title">Billing &amp; Orders</span>
                        </span>
                        <span class="zt-pcb-module__code">PAY-02</span>
                    </span>
                    <span class="zt-pcb-module__body" id="zt-pcb-billing-help">
                        <span class="zt-pcb-module__text">Invoices and payments</span>
                        <span class="zt-pcb-module__text">Products and services</span>
                    </span>
                </a>

                <a class="zt-pcb-module zt-pcb-module--support" href="supporttickets.php" aria-describedby="zt-pcb-support-help">
                    <span class="zt-pcb-module__status">
                        <span class="zt-pcb-module__status-dot" aria-hidden="true"></span>
                        <span>Available</span>
                    </span>
                    <span class="zt-pcb-module__header">
                        <span class="zt-pcb-module__title-wrap">
                            <span class="zt-pcb-module__icon" aria-hidden="true"><i class="fal fa-headset"></i></span>
                            <span class="zt-pcb-module__title">Support &amp; Downloads</span>
                        </span>
                        <span class="zt-pcb-module__code">CARE-03</span>
                    </span>
                    <span class="zt-pcb-module__body" id="zt-pcb-support-help">
                        <span class="zt-pcb-module__text">Technical assistance</span>
                        <span class="zt-pcb-module__text">Licenses and resources</span>
                    </span>
                </a>

                <a class="zt-pcb-module zt-pcb-module--account" href="clientarea.php?action=details" aria-describedby="zt-pcb-account-help">
                    <span class="zt-pcb-module__status">
                        <span class="zt-pcb-module__status-dot" aria-hidden="true"></span>
                        <span>Protected</span>
                    </span>
                    <span class="zt-pcb-module__header">
                        <span class="zt-pcb-module__title-wrap">
                            <span class="zt-pcb-module__icon" aria-hidden="true"><i class="fal fa-user-shield"></i></span>
                            <span class="zt-pcb-module__title">Account &amp; Security</span>
                        </span>
                        <span class="zt-pcb-module__code">ID-04</span>
                    </span>
                    <span class="zt-pcb-module__body" id="zt-pcb-account-help">
                        <span class="zt-pcb-module__text">Profile and security</span>
                        <span class="zt-pcb-module__text">Authentication and protection</span>
                    </span>
                </a>
                </div>
            </div>
        </div>
    </section>

    <section class="zt-launch-section" aria-labelledby="zt-launch-title">
        <div class="zt-launch-header">
            <h2 id="zt-launch-title">Get Started in Minutes</h2>
            <p>
                Create your account, verify your email, and activate your services in just a few simple steps.
            </p>
        </div>

        <div class="zt-launch-path" aria-label="Portal launch path">
            <svg class="zt-launch-lines" viewBox="0 0 1000 24" preserveAspectRatio="none" aria-hidden="true" focusable="false">
                <path class="zt-launch-line" d="M60 12 H940"></path>
                <circle class="zt-launch-pulse" r="5">
                    <animateMotion dur="8s" repeatCount="indefinite" path="M60 12 H940"></animateMotion>
                </circle>
            </svg>

            <a class="zt-launch-step zt-launch-step--account" href="register.php">
                <span class="zt-launch-step__count">01</span>
                <span class="zt-launch-step__icon" aria-hidden="true"><i class="fal fa-user-plus"></i></span>
                <strong>Create Account</strong>
                <span>Sign up in just a few steps.</span>
            </a>

            <a class="zt-launch-step zt-launch-step--verify" href="clientarea.php">
                <span class="zt-launch-step__count">02</span>
                <span class="zt-launch-step__icon" aria-hidden="true"><i class="fal fa-envelope-open-text"></i></span>
                <strong>Verify Your Email</strong>
                <span>Secure and activate your account.</span>
            </a>

            <a class="zt-launch-step zt-launch-step--service" href="cart.php">
                <span class="zt-launch-step__count">03</span>
                <span class="zt-launch-step__icon" aria-hidden="true"><i class="fal fa-rocket"></i></span>
                <strong>Order or Activate a Service</strong>
                <span>Choose the solutions your business needs.</span>
            </a>

            <a class="zt-launch-step zt-launch-step--manage" href="clientarea.php">
                <span class="zt-launch-step__count">04</span>
                <span class="zt-launch-step__icon" aria-hidden="true"><i class="fal fa-layer-group"></i></span>
                <strong>Manage Everything</strong>
                <span>Access all your services from one connected workspace.</span>
            </a>
        </div>

        <div class="zt-launch-divider" aria-hidden="true"></div>

        <div class="zt-service-promo" aria-labelledby="zt-service-promo-title">
            <div class="zt-service-promo__content">
                <h2 id="zt-service-promo-title">Need a New Digital Solution?</h2>
                <p>
                    Looking to build, grow, or transform your business? Our services are designed to support every stage of your digital journey.
                </p>
                <a class="zt-service-promo__link" href="https://zenviktechnologies.com/#services">
                    Explore Our Services <span aria-hidden="true">&rarr;</span>
                </a>
            </div>

            <div class="zt-service-chips" aria-label="Zenvik service areas">
                <span class="zt-service-chip zt-service-chip--one"><i class="fal fa-laptop-code" aria-hidden="true"></i> Build Your Website</span>
                <span class="zt-service-chip zt-service-chip--two"><i class="fal fa-code" aria-hidden="true"></i> Custom Software</span>
                <span class="zt-service-chip zt-service-chip--three"><i class="fal fa-cloud" aria-hidden="true"></i> Cloud &amp; Hosting</span>
                <span class="zt-service-chip zt-service-chip--four"><i class="fal fa-globe" aria-hidden="true"></i> Your Domain</span>
                <span class="zt-service-chip zt-service-chip--five"><i class="fal fa-brain" aria-hidden="true"></i> AI Solutions</span>
                <span class="zt-service-chip zt-service-chip--six"><i class="fal fa-bullhorn" aria-hidden="true"></i> Growth &amp; Branding</span>
                <span class="zt-service-chip zt-service-chip--seven"><i class="fal fa-network-wired" aria-hidden="true"></i> Smart ICT</span>
            </div>
        </div>
    </section>

    <section class="zt-support-suite" aria-labelledby="zt-support-trust-title">
        <div class="zt-review-panel">
            <div class="zt-support-heading">
                <span class="zt-review-eyebrow">Customer Reviews</span>
                <h2 id="zt-support-trust-title">Trusted by Businesses. Backed by Great Support.</h2>
            </div>

            <div class="zt-review-marquee" aria-label="Customer support reviews">
                <div class="zt-review-track">
                    <figure class="zt-review-card">
                        <span class="zt-review-stars" aria-label="Five star review">★★★★★</span>
                        <blockquote>"The support team resolved our issue quickly and professionally."</blockquote>
                        <figcaption>Business Owner</figcaption>
                    </figure>
                    <figure class="zt-review-card">
                        <span class="zt-review-stars" aria-label="Five star review">★★★★★</span>
                        <blockquote>"Excellent communication from start to finish."</blockquote>
                        <figcaption>SME Customer</figcaption>
                    </figure>
                    <figure class="zt-review-card">
                        <span class="zt-review-stars" aria-label="Five star review">★★★★★</span>
                        <blockquote>"Fast ticket responses and knowledgeable engineers."</blockquote>
                        <figcaption>Agency Partner</figcaption>
                    </figure>
                    <figure class="zt-review-card">
                        <span class="zt-review-stars" aria-label="Five star review">★★★★★</span>
                        <blockquote>"Reliable support whenever we needed assistance."</blockquote>
                        <figcaption>E-commerce Client</figcaption>
                    </figure>
                    <figure class="zt-review-card">
                        <span class="zt-review-stars" aria-label="Five star review">★★★★★</span>
                        <blockquote>"Professional customer care with clear updates."</blockquote>
                        <figcaption>Corporate Client</figcaption>
                    </figure>
                    <figure class="zt-review-card">
                        <span class="zt-review-stars" aria-label="Five star review">★★★★★</span>
                        <blockquote>"A secure portal experience backed by a responsive technical team."</blockquote>
                        <figcaption>Startup Founder</figcaption>
                    </figure>
                    <figure class="zt-review-card" aria-hidden="true">
                        <span class="zt-review-stars">★★★★★</span>
                        <blockquote>"The support team resolved our issue quickly and professionally."</blockquote>
                        <figcaption>Business Owner</figcaption>
                    </figure>
                    <figure class="zt-review-card" aria-hidden="true">
                        <span class="zt-review-stars">★★★★★</span>
                        <blockquote>"Excellent communication from start to finish."</blockquote>
                        <figcaption>SME Customer</figcaption>
                    </figure>
                    <figure class="zt-review-card" aria-hidden="true">
                        <span class="zt-review-stars">★★★★★</span>
                        <blockquote>"Fast ticket responses and knowledgeable engineers."</blockquote>
                        <figcaption>Agency Partner</figcaption>
                    </figure>
                    <figure class="zt-review-card" aria-hidden="true">
                        <span class="zt-review-stars">★★★★★</span>
                        <blockquote>"Reliable support whenever we needed assistance."</blockquote>
                        <figcaption>E-commerce Client</figcaption>
                    </figure>
                    <figure class="zt-review-card" aria-hidden="true">
                        <span class="zt-review-stars">★★★★★</span>
                        <blockquote>"Professional customer care with clear updates."</blockquote>
                        <figcaption>Corporate Client</figcaption>
                    </figure>
                    <figure class="zt-review-card" aria-hidden="true">
                        <span class="zt-review-stars">★★★★★</span>
                        <blockquote>"A secure portal experience backed by a responsive technical team."</blockquote>
                        <figcaption>Startup Founder</figcaption>
                    </figure>
                </div>
            </div>

            <div class="zt-review-metrics" aria-label="Customer trust metrics">
                <div class="zt-review-metric">
                    <span class="zt-review-metric__icon" aria-hidden="true"><i class="fal fa-smile"></i></span>
                    <strong class="zt-review-metric__number">
                        <span class="zt-review-metric__count" data-target="100" data-suffix="+">100+</span>
                    </strong>
                    <span class="zt-review-metric__label">Happy Customers</span>
                </div>
                <div class="zt-review-metric">
                    <span class="zt-review-metric__icon" aria-hidden="true"><i class="fal fa-ticket-alt"></i></span>
                    <strong class="zt-review-metric__number">
                        <span class="zt-review-metric__count" data-target="250" data-suffix="+">250+</span>
                    </strong>
                    <span class="zt-review-metric__label">Support Requests Resolved</span>
                </div>
                <div class="zt-review-metric">
                    <span class="zt-review-metric__icon" aria-hidden="true"><i class="fal fa-heart"></i></span>
                    <strong class="zt-review-metric__number">
                        <span class="zt-review-metric__count" data-target="98" data-suffix="%">98%</span>
                    </strong>
                    <span class="zt-review-metric__label">Customer Satisfaction</span>
                </div>
                <div class="zt-review-metric zt-review-metric--static">
                    <span class="zt-review-metric__icon" aria-hidden="true"><i class="fal fa-headset"></i></span>
                    <strong class="zt-review-metric__number">24/7</strong>
                    <span class="zt-review-metric__label">Technical Support</span>
                </div>
                <div class="zt-review-metric zt-review-metric--static">
                    <span class="zt-review-metric__icon" aria-hidden="true"><i class="fal fa-shield-check"></i></span>
                    <strong class="zt-review-metric__number">99.9%</strong>
                    <span class="zt-review-metric__label">Portal Availability</span>
                </div>
            </div>
            {literal}
            <script>
                (function () {
                    function setupReviewMetrics() {
                        var counters = document.querySelectorAll('.zt-review-metric__count[data-target]');
                        if (!counters.length) {
                            return;
                        }

                        var prefersReducedMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

                        function setCounterValue(counter, value) {
                            counter.textContent = String(value) + (counter.getAttribute('data-suffix') || '');
                        }

                        function finishCounter(counter) {
                            setCounterValue(counter, counter.getAttribute('data-target'));
                        }

                        function animateCounter(counter) {
                            if (counter.getAttribute('data-counted') === 'true') {
                                return;
                            }

                            counter.setAttribute('data-counted', 'true');

                            var target = parseInt(counter.getAttribute('data-target'), 10);
                            var start = performance.now();
                            var duration = 1300;

                            function tick(now) {
                                var progress = Math.min((now - start) / duration, 1);
                                var eased = 1 - Math.pow(1 - progress, 3);
                                setCounterValue(counter, Math.round(target * eased));

                                if (progress < 1) {
                                    requestAnimationFrame(tick);
                                } else {
                                    finishCounter(counter);
                                }
                            }

                            setCounterValue(counter, 0);
                            requestAnimationFrame(tick);
                        }

                        if (prefersReducedMotion || !('IntersectionObserver' in window)) {
                            counters.forEach(finishCounter);
                            return;
                        }

                        var observer = new IntersectionObserver(function (entries) {
                            entries.forEach(function (entry) {
                                if (entry.isIntersecting) {
                                    var counter = entry.target.querySelector('.zt-review-metric__count[data-target]');
                                    if (counter) {
                                        animateCounter(counter);
                                    }
                                    observer.unobserve(entry.target);
                                }
                            });
                        }, { threshold: 0.35 });

                        counters.forEach(function (counter) {
                            setCounterValue(counter, 0);
                            var card = counter.closest('.zt-review-metric');
                            if (card) {
                                observer.observe(card);
                            }
                        });
                    }

                    if (document.readyState === 'loading') {
                        document.addEventListener('DOMContentLoaded', setupReviewMetrics);
                    } else {
                        setupReviewMetrics();
                    }
                })();
            </script>
            {/literal}
        </div>

        <div class="zt-resource-command" aria-labelledby="zt-resource-command-title">
            <div class="zt-resource-command__bg" aria-hidden="true">
                <span></span>
                <span></span>
                <span></span>
            </div>

            <div class="zt-resource-command__heading">
                <span class="zt-resource-eyebrow">Support Center</span>
                <h2 id="zt-resource-command-title">Support &amp; Resources</h2>
                <p>
                    Everything you need to get help, manage your services and stay informed.
                </p>
            </div>

            <div class="zt-resource-ribbon" aria-label="Support resource links">
                <div class="zt-resource-track">
                    <a class="zt-resource-capsule" href="{routePath('knowledgebase-index')}">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-book"></i></span>
                        <strong>Knowledge Base</strong>
                        <span>Browse help articles and guides.</span>
                    </a>
                    <a class="zt-resource-capsule" href="submitticket.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-ticket-alt"></i></span>
                        <strong>Open Ticket</strong>
                        <span>Submit a support request.</span>
                    </a>
                    <a class="zt-resource-capsule" href="contact.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-comments"></i></span>
                        <strong>Live Chat</strong>
                        <span>Connect instantly with our support team.</span>
                    </a>
                    <a class="zt-resource-capsule" href="contact.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-phone"></i></span>
                        <strong>Contact Us</strong>
                        <span>Reach our support specialists.</span>
                    </a>
                    <a class="zt-resource-capsule" href="serverstatus.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-signal"></i></span>
                        <strong>Network Status</strong>
                        <span>Check platform availability.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('download-index')}">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-download"></i></span>
                        <strong>Downloads</strong>
                        <span>Software, tools and resources.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('announcement-index')}">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-bullhorn"></i></span>
                        <strong>Announcements</strong>
                        <span>Latest platform updates.</span>
                    </a>
                    <a class="zt-resource-capsule" href="serverstatus.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-clipboard-check"></i></span>
                        <strong>Service Status</strong>
                        <span>Maintenance and incident information.</span>
                    </a>
                    <a class="zt-resource-capsule" href="submitticket.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-credit-card"></i></span>
                        <strong>Billing Support</strong>
                        <span>Get help with invoices and payments.</span>
                    </a>
                    <a class="zt-resource-capsule" href="clientarea.php">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-user-circle"></i></span>
                        <strong>Client Area</strong>
                        <span>Manage your account and services.</span>
                    </a>
                    <a class="zt-resource-capsule" href="clientarea.php?action=details">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-shield-check"></i></span>
                        <strong>Security &amp; Account Help</strong>
                        <span>Protect your account.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('knowledgebase-index')}">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-question-circle"></i></span>
                        <strong>Frequently Asked Questions</strong>
                        <span>Quick answers to common questions.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('knowledgebase-index')}" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-book"></i></span>
                        <strong>Knowledge Base</strong>
                        <span>Browse help articles and guides.</span>
                    </a>
                    <a class="zt-resource-capsule" href="submitticket.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-ticket-alt"></i></span>
                        <strong>Open Ticket</strong>
                        <span>Submit a support request.</span>
                    </a>
                    <a class="zt-resource-capsule" href="contact.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-comments"></i></span>
                        <strong>Live Chat</strong>
                        <span>Connect instantly with our support team.</span>
                    </a>
                    <a class="zt-resource-capsule" href="contact.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-phone"></i></span>
                        <strong>Contact Us</strong>
                        <span>Reach our support specialists.</span>
                    </a>
                    <a class="zt-resource-capsule" href="serverstatus.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-signal"></i></span>
                        <strong>Network Status</strong>
                        <span>Check platform availability.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('download-index')}" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-download"></i></span>
                        <strong>Downloads</strong>
                        <span>Software, tools and resources.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('announcement-index')}" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-bullhorn"></i></span>
                        <strong>Announcements</strong>
                        <span>Latest platform updates.</span>
                    </a>
                    <a class="zt-resource-capsule" href="serverstatus.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-clipboard-check"></i></span>
                        <strong>Service Status</strong>
                        <span>Maintenance and incident information.</span>
                    </a>
                    <a class="zt-resource-capsule" href="submitticket.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-credit-card"></i></span>
                        <strong>Billing Support</strong>
                        <span>Get help with invoices and payments.</span>
                    </a>
                    <a class="zt-resource-capsule" href="clientarea.php" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-user-circle"></i></span>
                        <strong>Client Area</strong>
                        <span>Manage your account and services.</span>
                    </a>
                    <a class="zt-resource-capsule" href="clientarea.php?action=details" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-shield-check"></i></span>
                        <strong>Security &amp; Account Help</strong>
                        <span>Protect your account.</span>
                    </a>
                    <a class="zt-resource-capsule" href="{routePath('knowledgebase-index')}" aria-hidden="true" tabindex="-1">
                        <span class="zt-resource-capsule__icon" aria-hidden="true"><i class="fal fa-question-circle"></i></span>
                        <strong>Frequently Asked Questions</strong>
                        <span>Quick answers to common questions.</span>
                    </a>
                </div>
            </div>

            <div class="zt-resource-status" aria-label="Support center status indicators">
                <span>Customer Care Desk</span>
                <span>Account Help Center</span>
                <span>Resource Library Access</span>
                <span>Guided Ticket Support</span>
                <span>Service Updates Hub</span>
            </div>
        </div>

        <div class="zt-faq-panel" aria-labelledby="zt-faq-title">
            <div class="zt-faq-hero">
                <div class="zt-faq-hero__inner">
                    <span class="zt-faq-eyebrow">HELP CENTER</span>
                    <h2 id="zt-faq-title">Frequently Asked Questions</h2>
                    <p>
                        Quick answers to common questions about your account, billing, services and customer support.
                    </p>
                </div>
            </div>

            <div class="zt-faq-shell">
                <div class="zt-faq-accordion" id="ztPortalFaqAccordion">
                    <div class="zt-faq-item">
                        <button class="zt-faq-button" type="button" data-toggle="collapse" data-target="#ztPortalFaqOne" aria-expanded="true" aria-controls="ztPortalFaqOne">
                            <span>How do I access my client account?</span>
                            <span class="zt-faq-indicator" aria-hidden="true"></span>
                        </button>
                        <div id="ztPortalFaqOne" class="collapse show" data-parent="#ztPortalFaqAccordion">
                            <div class="zt-faq-body">
                                Use the Login button or visit the client area, then sign in with your registered email address and password.
                            </div>
                        </div>
                    </div>

                    <div class="zt-faq-item">
                        <button class="zt-faq-button collapsed" type="button" data-toggle="collapse" data-target="#ztPortalFaqTwo" aria-expanded="false" aria-controls="ztPortalFaqTwo">
                            <span>How do I submit a support ticket?</span>
                            <span class="zt-faq-indicator" aria-hidden="true"></span>
                        </button>
                        <div id="ztPortalFaqTwo" class="collapse" data-parent="#ztPortalFaqAccordion">
                            <div class="zt-faq-body">
                                Open a ticket from the portal or use the support resources ribbon to start a technical support request.
                            </div>
                        </div>
                    </div>

                    <div class="zt-faq-item">
                        <button class="zt-faq-button collapsed" type="button" data-toggle="collapse" data-target="#ztPortalFaqThree" aria-expanded="false" aria-controls="ztPortalFaqThree">
                            <span>Where can I view my invoices and services?</span>
                            <span class="zt-faq-indicator" aria-hidden="true"></span>
                        </button>
                        <div id="ztPortalFaqThree" class="collapse" data-parent="#ztPortalFaqAccordion">
                            <div class="zt-faq-body">
                                Sign in to the client area to review invoices, payments, active services, domains and account details.
                            </div>
                        </div>
                    </div>

                    <div class="zt-faq-item">
                        <button class="zt-faq-button collapsed" type="button" data-toggle="collapse" data-target="#ztPortalFaqFour" aria-expanded="false" aria-controls="ztPortalFaqFour">
                            <span>How do I reset my password?</span>
                            <span class="zt-faq-indicator" aria-hidden="true"></span>
                        </button>
                        <div id="ztPortalFaqFour" class="collapse" data-parent="#ztPortalFaqAccordion">
                            <div class="zt-faq-body">
                                Use the password reset option on the portal login page and follow the secure email instructions.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="zt-faq-support" aria-labelledby="zt-faq-support-title">
                    <h3 id="zt-faq-support-title">Still Need Help?</h3>
                    <p>
                        Can't find the answer you're looking for?<br>
                        Our support team is ready to assist you.
                    </p>
                    <div class="zt-faq-support__actions">
                        <a class="zt-faq-support__button zt-faq-support__button--primary" href="submitticket.php">Open a Support Ticket</a>
                        <a class="zt-faq-support__button zt-faq-support__button--secondary" href="{routePath('knowledgebase-index')}">Browse Knowledge Base</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
{else}
    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
        <h2 class="text-center m-4">{lang key='clientHomePanels.productsAndServices'}</h2>

        <div class="card-columns home">
            {foreach $productGroups as $productGroup}

                <div class="card mb-3">
                    <div class="card-body p-lg-4 p-xl-5 text-center">
                        <h3 class="card-title pricing-card-title">
                            {$productGroup->name}
                        </h3>
                        <p>{$productGroup->tagline}</p>
                        <a href="{$productGroup->getRoutePath()}" class="btn btn-block btn-outline-primary">
                            {lang key='browseProducts'}
                        </a>
                    </div>
                </div>

            {/foreach}

            {if $registerdomainenabled}
                <div class="card mb-3">
                    <div class="card-body p-lg-4 p-xl-5 text-center">
                        <h3 class="card-title pricing-card-title">
                            {lang key='orderregisterdomain'}
                        </h3>
                        <p>{lang key='secureYourDomain'}</p>
                        <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-block btn-outline-primary">
                            {lang key='navdomainsearch'}
                        </a>
                    </div>
                </div>
            {/if}
            {if $transferdomainenabled}
                <div class="card mb-3">
                    <div class="card-body p-lg-4 p-xl-5 text-center">
                        <h3 class="card-title pricing-card-title">
                            {lang key='transferYourDomain'}
                        </h3>
                        <p>{lang key='transferExtend'}</p>
                        <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="btn btn-block btn-outline-primary">
                            {lang key='transferYourDomain'}
                        </a>
                    </div>
                </div>
            {/if}
        </div>
    {/if}

    <h2 class="text-center m-4">{lang key='howCanWeHelp'}</h2>

    <div class="row my-5 action-icon-btns">
        <div class="col-6 col-md-4 col-lg">
            <a href="{routePath('announcement-index')}" class="card-accent-teal">
                <figure class="ico-container">
                    <i class="fal fa-bullhorn"></i>
                </figure>
                {lang key='announcementstitle'}
            </a>
        </div>
        <div class="col-6 col-md-4 col-lg">
            <a href="serverstatus.php" class="card-accent-pomegranate">
                <figure class="ico-container">
                    <i class="fal fa-server"></i>
                </figure>
                {lang key='networkstatustitle'}
            </a>
        </div>
        <div class="col-6 col-md-4 col-lg">
            <a href="{routePath('knowledgebase-index')}" class="card-accent-sun-flower">
                <figure class="ico-container">
                    <i class="fal fa-book"></i>
                </figure>
                {lang key='knowledgebasetitle'}
            </a>
        </div>
        <div class="col-6 col-md-4 offset-md-2 offset-lg-0 col-lg">
            <a href="{routePath('download-index')}" class="card-accent-asbestos">
                <figure class="ico-container">
                    <i class="fal fa-download"></i>
                </figure>
                {lang key='downloadstitle'}
            </a>
        </div>
        <div class="col-6 offset-3 offset-md-0 col-md-4 col-lg">
            <a href="submitticket.php" class="card-accent-green">
                <figure class="ico-container">
                    <i class="fal fa-life-ring"></i>
                </figure>
                {lang key='homepage.submitTicket'}
            </a>
        </div>
    </div>

    <h2 class="text-center m-4">{lang key='homepage.yourAccount'}</h2>

    <div class="row my-5 action-icon-btns">
        <div class="col-6 col-md-4 col-lg">
            <a href="clientarea.php" class="card-accent-midnight-blue">
                <figure class="ico-container">
                    <i class="fal fa-home"></i>
                </figure>
                {lang key='homepage.yourAccount'}
            </a>
        </div>
        <div class="col-6 col-md-4 col-lg">
            <a href="clientarea.php?action=services" class="card-accent-midnight-blue">
                <figure class="ico-container">
                    <i class="far fa-cubes"></i>
                </figure>
                {lang key='homepage.manageServices'}
            </a>
        </div>
        {if $registerdomainenabled || $transferdomainenabled || $numberOfDomains}
            <div class="col-6 col-md-4 col-lg">
                <a href="clientarea.php?action=domains" class="card-accent-midnight-blue">
                    <figure class="ico-container">
                        <i class="fal fa-globe"></i>
                    </figure>
                    {lang key='homepage.manageDomains'}
                </a>
            </div>
        {/if}
        <div class="col-6 col-md-4 offset-md-2 offset-lg-0 col-lg">
            <a href="supporttickets.php" class="card-accent-midnight-blue">
                <figure class="ico-container">
                    <i class="fal fa-comments"></i>
                </figure>
                {lang key='homepage.supportRequests'}
            </a>
        </div>
        <div class="col-6 offset-3 offset-md-0 col-md-4 col-lg">
            <a href="clientarea.php?action=masspay&all=true" class="card-accent-midnight-blue">
                <figure class="ico-container">
                    <i class="fal fa-credit-card"></i>
                </figure>
                {lang key='homepage.makeAPayment'}
            </a>
        </div>
    </div>
{/if}
