# Parsa Studio Wiki - Developer & Architecture Guide 📚

Welcome to the official developer and architecture documentation for **Parsa Studio**. This Wiki outlines the technical blueprints, behavioral sales philosophies, and implementation workflows for the entire platform.

---

## 📖 Wiki Navigation

1.  **[Core Philosophy & Branding](wiki-home.md):** The Swiss Editorial Minimalist visual system and neuromarketing principles.
2.  **[System Architecture](wiki-architecture.md):** Under the hood of the sub-0.4s static frontend, LTR/RTL toggles, and `convertDigits` engine.
3.  **[Automated Deployment (DevOps)](wiki-deployment.md):** Configuration guides for GitHub Pages Actions and cloud Supabase connections.
4.  **[Interactive Code Snippets](#-exclusive-front-end-uiux-snippets):** High-prestige, responsive CSS/JS components.

---

## 💎 Exclusive Front-End UI/UX Snippets (اتودهای برتر طراحی فرانت‌اند)

To showcase the high-prestige coding standard of **Parsa Studio**, the following clean, human-like, and modular web components are integrated directly into our design systems:

### 1. Swiss Editorial Typography Header (هدر متنی لوکس با فونت سریف مینی‌مال)
A beautiful, highly structured typographic heading section utilizing strict Swiss spacing, contrasting serif/sans-serif fonts, and fine borders:

```html
<!-- Swiss Editorial Typographic Header -->
<div class="editorial-header">
    <div class="meta-row">
        <span>EST. 2026</span>
        <span>SHIRAZ, IRAN</span>
    </div>
    <h1 class="serif-title"> handcrafting <br><em>digital fortresses</em>.</h1>
    <p class="sans-desc">We optimize custom-coded web architectures for absolute performance under severe local network constraints. Zero templates, pure speed.</p>
</div>

<style>
.editorial-header {
    background: #FAF6F0;
    border: 1px solid #111111;
    padding: 60px;
    max-width: 600px;
    margin: 40px auto;
    text-align: right;
    direction: rtl;
}

.meta-row {
    display: flex;
    justify-content: space-between;
    font-size: 0.75rem;
    font-weight: 900;
    color: #002FA7; /* Royal Klein Blue */
    border-bottom: 1px solid #111111;
    padding-bottom: 15px;
    margin-bottom: 30px;
}

.serif-title {
    font-family: 'Playfair Display', 'Georgia', serif;
    font-size: 3.5rem;
    font-weight: 900;
    line-height: 1.1;
    color: #111111;
    margin-bottom: 25px;
    letter-spacing: -1.5px;
}

.serif-title em {
    font-style: italic;
    font-weight: normal;
    color: #002FA7;
}

.sans-desc {
    font-family: 'Vazirmatn', sans-serif;
    font-size: 1rem;
    color: #4B5563;
    text-align: justify;
    line-height: 1.8;
}
</style>
```

### 2. High-Performance SVG Background Grid (شبکه پس‌زمینه هندسی فوق‌سبک)
Instead of using heavy image patterns, this CSS-only background grid loads in **zero milliseconds** and provides a highly prestigious, structured technical aesthetic:

```html
<!-- Lightweight Swiss Coordinate Grid Background -->
<div class="swiss-grid-bg">
    <!-- Main page content lives here -->
</div>

<style>
.swiss-grid-bg {
    width: 100%;
    min-height: 100vh;
    background-color: #FAF6F0;
    /* Clean 1px geometric grid using linear-gradients */
    background-image: 
        linear-gradient(rgba(17, 17, 17, 0.03) 1px, transparent 1px),
        linear-gradient(90deg, rgba(17, 17, 17, 0.03) 1px, transparent 1px);
    background-size: 40px 40px; /* Precise 40px geometric grid coordinates */
    background-position: center;
}
</style>
```

---

## 📈 Search Engine Optimization (سئو تکنیکال و محلی)

Parsa Studio is optimized strictly for **Local SEO in Shiraz and Iran**, capturing high-intent search terms like:
*   `طراحی سایت پزشکان شیراز` (Medical website design Shiraz)
*   `طراحی سایت اختصاصی لوکس` (Bespoke luxury web design)
*   `طراحی لندینگ پیج حرفه‌ای شیراز` (Creative landing page Shiraz)

Our PageSpeed index score is guaranteed **100/100**, passing Google Core Web Vitals flawlessly.

---

*Handcrafted with absolute technical precision and artistic madness by Parsa Rezaei Khosravi, 2026.*
