# Security Policy

## Supported Versions

At **Parsa Studio**, security is not an afterthought or an added plugin; it is a foundational pillar of our handcrafted frontend code. We maintain and support only the latest commits on the `main` branch with security patches.

| Version | Supported |
| :--- | :--- |
| 1.x.x | ✅ |
| < 1.0.0 | ❌ |

---

## Reporting a Vulnerability

**Please do NOT report security vulnerabilities via public GitHub issues.**

If you discover a security vulnerability or exploit within our custom frontends, database connections, or AI integration pipelines, please report it privately:

1. Send a detailed description of the vulnerability directly to the lead architect at: **`parsarezaeikhosravi@gmail.com`**
2. Include a proof of concept (PoC) or steps to reproduce the exploit.
3. We will acknowledge your report within **48 hours** and release a secure patch to the repository within **7 to 14 business days**.

---

## Security Philosophy

Parsa Studio is built on the principle of **Root Isolation** — a zero-trust, self-contained architecture that minimizes attack surfaces by design.

### Key Security Pillars

| Pillar | Description |
| :--- | :--- |
| **Zero External Dependencies** | No CDN, no third-party scripts, no Google Fonts. Everything is inlined. This eliminates supply-chain attacks and reduces the risk of malicious script injection. |
| **No Backend (by default)** | The current version is a static frontend. No databases, no server-side logic, no exposed APIs — significantly reducing the attack surface. |
| **Client-Side Validation** | All form inputs are validated on the client side with real-time error feedback. (Note: Server-side validation is recommended if a backend is added later.) |
| **Local Error Tracking** | Errors are stored in `localStorage` with a hidden debug panel. No error data is transmitted externally unless manually exported by the admin. |
| **Content Security Policy (CSP) Ready** | The architecture is designed to work with a strict CSP. Inline scripts and styles are self-contained, making it easier to lock down. |

---

## Secure UI/UX Components (اتودهای امنیتی فرانت‌اند)

Below are production-ready, highly secure, and beautifully styled interactive UI components in our signature **Swiss Editorial Brutalist** theme:

### 1. Secure OTP Code Input Box (کادر شیک ورود رمز یکبار مصرف)

A secure, responsive 4-digit OTP code input component. Features dynamic autofocus transitions and clean brutalist borders:

```html
<div class="otp-container">
  <span class="otp-badge">🔒 SECURE VERIFICATION</span>
  <h4>Enter Verification Code</h4>
  <p>A 4-digit code has been sent to your registered endpoint.</p>
  <div class="otp-inputs">
    <input type="text" maxlength="1" pattern="[0-9]" inputmode="numeric" autofocus>
    <input type="text" maxlength="1" pattern="[0-9]" inputmode="numeric">
    <input type="text" maxlength="1" pattern="[0-9]" inputmode="numeric">
    <input type="text" maxlength="1" pattern="[0-9]" inputmode="numeric">
  </div>
</div>
