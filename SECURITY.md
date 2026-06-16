[SECURITY.md](https://github.com/user-attachments/files/29022850/SECURITY.md)
# Security Policy (Parsa Studio)

## Supported Versions

At **Parsa Studio**, security is not an afterthought or an added plugin; it is a foundational pillar of our handcrafted frontend codes. We maintain and support only the latest commits on the `main` branch with security patches.

| Version | Supported          |
| ------- | ------------------ |
| 1.x.x   | :white_check_mark: |
| < 1.0.0 | :x:                |

---

## Reporting a Vulnerability

**Please do not report security vulnerabilities via public GitHub issues.**

If you discover a security vulnerability or exploit within our custom frontends, database connections, or AI integration pipelines, please report it privately:

1.  Send a detailed description of the vulnerability directly to the lead architect at **`parsarezaeikhosravi@gmail.com`**.
2.  Include a proof of concept (PoC) or steps to reproduce the exploit.
3.  We will acknowledge your report within **48 hours** and release a secure patch to the repository within **7 to 14 business days**.

---

## 🔒 Premium Secure UI/UX Components (اتودهای امنیتی فرانت‌اند)

Below are production-ready, highly secure, and beautifully styled interactive UI components in our signature **Swiss Editorial Brutalist** theme:

### 1. Secure OTP Code Input Box (کادر شیک ورود رمز یکبار مصرف)
A secure, responsive 4-digit OTP code input component. Features dynamic autofocus transitions and clean brutalist borders:

```html
<!-- Secure Swiss Editorial OTP Input Box -->
<div class="otp-container">
    <span class="secure-badge">🛡️ SECURE VERIFICATION</span>
    <h4>Enter Verification Code</h4>
    <p>A 4-digit code has been sent to your registered endpoint.</p>
    
    <div class="otp-inputs">
        <input type="text" maxlength="1" class="otp-box" autofocus>
        <input type="text" maxlength="1" class="otp-box">
        <input type="text" maxlength="1" class="otp-box">
        <input type="text" maxlength="1" class="otp-box">
    </div>
</div>

<style>
.otp-container {
    background: #FAF6F0;
    border: 1px solid #111111;
    padding: 30px;
    border-radius: 4px;
    max-width: 380px;
    box-shadow: 10px 10px 0px #111111;
    text-align: center;
}

.secure-badge {
    display: inline-block;
    font-size: 0.65rem;
    font-weight: 900;
    color: #FFFFFF;
    background: #002FA7; /* Royal Klein Blue */
    padding: 4px 10px;
    border-radius: 4px;
    margin-bottom: 15px;
}

.otp-container h4 {
    font-family: 'Playfair Display', serif;
    font-size: 1.4rem;
    margin-bottom: 8px;
    color: #111111;
}

.otp-container p {
    font-size: 0.8rem;
    color: #4B5563;
    margin-bottom: 20px;
}

.otp-inputs {
    display: flex;
    justify-content: center;
    gap: 12px;
}

.otp-box {
    width: 50px;
    height: 55px;
    background: transparent;
    border: 1px solid #111111;
    border-radius: 4px;
    font-size: 1.5rem;
    font-weight: 900;
    text-align: center;
    color: #111111;
    outline: none;
    transition: border-color 0.2s, box-shadow 0.2s;
}

.otp-box:focus {
    border-color: #002FA7;
    box-shadow: 0 0 0 3px rgba(0, 47, 167, 0.15);
}
</style>
```

### 2. Client-Side Password Strength Meter (نشان‌گر قدرت رمز عبور)
An interactive password input with a live, color-coded security strength bar:

```html
<!-- Secure Password Input with Dynamic Strength Progress -->
<div class="password-meter-container">
    <label>Choose a Secure Password</label>
    <input type="password" id="secure-pass-input" class="pass-input" placeholder="••••••••" oninput="checkPasswordStrength(this.value)">
    
    <!-- نوار پویای نشان‌دهنده امنیت رمز -->
    <div class="strength-bar">
        <div id="strength-fill" class="strength-fill"></div>
    </div>
    <span id="strength-label" class="strength-label">Too Weak</span>
</div>

<style>
.password-meter-container {
    background: #FAF6F0;
    border: 1px solid #111111;
    padding: 25px;
    border-radius: 4px;
    max-width: 380px;
    box-shadow: 10px 10px 0px #111111;
    text-align: right;
    direction: rtl;
}

.password-meter-container label {
    font-size: 0.85rem;
    font-weight: bold;
    display: block;
    margin-bottom: 8px;
}

.pass-input {
    width: 100%;
    padding: 10px;
    background: transparent;
    border: 1px solid #111111;
    border-radius: 4px;
    color: #111111;
    outline: none;
    font-size: 0.9rem;
    margin-bottom: 12px;
}

.pass-input:focus {
    border-color: #002FA7;
}

.strength-bar {
    width: 100%;
    height: 4px;
    background: #E2E8F0;
    border-radius: 10px;
    overflow: hidden;
    margin-bottom: 8px;
}

.strength-fill {
    width: 20%;
    height: 100%;
    background: #EF4444; /* Default: Weak */
    transition: width 0.3s ease, background-color 0.3s ease;
}

.strength-label {
    font-size: 0.75rem;
    color: #EF4444;
    font-weight: bold;
}
</style>

<script>
function checkPasswordStrength(val) {
    const fill = document.getElementById('strength-fill');
    const label = document.getElementById('strength-label');
    let score = 0;
    
    if (val.length > 5) score++;
    if (val.length > 8) score++;
    if (/[A-Z]/.test(val)) score++;
    if (/[0-9]/.test(val)) score++;
    
    if (score === 0) {
        fill.style.width = '10%'; fill.style.backgroundColor = '#EF4444'; label.innerText = 'Too Weak'; label.style.color = '#EF4444';
    } else if (score === 1) {
        fill.style.width = '30%'; fill.style.backgroundColor = '#F59E0B'; label.innerText = 'Weak'; label.style.color = '#F59E0B';
    } else if (score === 2 || score === 3) {
        fill.style.width = '65%'; fill.style.backgroundColor = '#002FA7'; label.innerText = 'Moderate'; label.style.color = '#002FA7';
    } else if (score === 4) {
        fill.style.width = '100%'; fill.style.backgroundColor = '#10B981'; label.innerText = 'Strong'; label.style.color = '#10B981';
    }
}
</script>
```
