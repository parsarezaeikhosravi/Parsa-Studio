# ⚜️ Parsa Studio

[![Total Views](https://raw.githubusercontent.com/parsarezaeikhosravi/Parsa-Studio/traffic/total_views.svg)](https://github.com/parsarezaeikhosravi/Parsa-Studio/tree/traffic)
[![Total Clones](https://raw.githubusercontent.com/parsarezaeikhosravi/Parsa-Studio/traffic/total_clones.svg)](https://github.com/parsarezaeikhosravi/Parsa-Studio/tree/traffic)

**A high-prestige, zero-CDN digital fortress for elite professionals.**
> Built for doctors, lawyers, and brands who demand more than a template.

🔗 **Live Demo:** [https://parsarezaeikhosravi.github.io/Parsa-Studio/](https://parsarezaeikhosravi.github.io/Parsa-Studio/)

---

## ✨ The Philosophy

**Parsa Studio** is more than a portfolio; it's a statement against the sluggish, insecure, and generic nature of the modern web. We believe premium brands deserve custom-coded, hand-crafted architectures that load in **under 0.4 seconds** and remain resilient even under severe network conditions.

This repository contains the complete, production-ready source code for the Parsa Studio brand, embodying our "Root Isolation" principle: a self-contained digital fortress with zero reliance on external CDNs, Google Fonts, or third-party scripts.

## 🚀 Core Features

### 1. Ultimate Performance & Resilience
- **Sub-0.4s LCP:** Validated by a live, interactive terminal on the hero section.
- **100/100 PageSpeed Score:** Optimized for Core Web Vitals.
- **Root Isolation Architecture:** Zero external dependencies. The site is immune to CDN blocks and network fluctuations, a critical feature for the Iranian market.
- **Offline-First (PWA):** A Service Worker (`sw.js`) caches core assets, allowing returning visitors to access the site even during internet outages.

### 2. Dynamic & Interactive Modules
- **Live Performance Terminal:** A real-time console that displays key metrics (DOM size, LCP, PageSpeed score) to prove performance claims.
- **Style Morph Card:** Instantly switches between three distinct design aesthetics (Luxe, Holographic, Retro) to demonstrate the power of custom code over rigid templates.
- **Frontend Sandbox:** A live CSS editor. Users can tweak colors, border-radius, and font sizes, seeing the generated CSS update in real-time.
- **Cost Calculator:** Calculates potential lost monthly visitors based on current site speed, using a transparent formula (15% loss per 1s delay).

### 3. Complete User Experience
- **Testimonials Carousel:** A 100% vanilla JS carousel featuring client reviews. It includes keyboard navigation, pagination dots, and respects `prefers-reduced-motion`.
- **Dark/Light Theme Toggle:** A seamless theming system with `localStorage` persistence and automatic `prefers-color-scheme` detection.
- **RTL-First Farsi Support:** Fully localized for Persian users with proper `dir="rtl"` handling and isolated LTR sections for code and emails.

### 4. Accessibility & Developer Tools
- **WCAG AA Compliant:** Implements skip-links, focus-visible states, proper ARIA labels, and screen-reader-friendly form validation.
- **Local Error Tracker:** Unhandled JavaScript errors and performance metrics (FCP, LCP, CLS) are stored in `localStorage`. The admin can view the debug panel by appending `?debug=h-6b86b273ff34fce` to the URL. This hidden panel allows for easy export of error logs as JSON.

## 🛠️ Tech Stack

- **Frontend:** Semantic HTML5, CSS3 Custom Properties, Vanilla ES6+ JavaScript
- **Architecture:** Single-Page Application (`index.html`), Monolithic but modular
- **Performance:** `requestIdleCallback`, Debounced Event Listeners, Lazy Loading
- **PWA:** `sw.js` (Service Worker), `manifest.json`
- **Accessibility:** WAI-ARIA, WCAG AA

## 📂 Repository Structure

```text
parsa-studio/
├── index.html          # The complete, monolithic application
├── sw.js               # Service Worker for offline caching
├── manifest.json       # Web App Manifest for PWA readiness
└── README.md           # This file
