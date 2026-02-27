// =====================================================
// EmailJS Contact Form — replace with your credentials
// =====================================================
const EMAILJS_PUBLIC_KEY = 'Bh0iDC8Nb23m1xLc7';   // Account > API Keys
const EMAILJS_SERVICE_ID = 'service_tu68hlk';   // Email Services tab
const EMAILJS_TEMPLATE_ID = 'template_u6nbfiu';  // Email Templates tab
// =====================================================

(function () {
    // Initialize EmailJS
    emailjs.init({ publicKey: EMAILJS_PUBLIC_KEY });

    document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('contact-form');
        if (!form) return;

        form.addEventListener('submit', function (e) {
            e.preventDefault();
            handleSubmit();
        });
    });

    function handleSubmit() {
        clearErrors();

        const name = document.getElementById('contact-name').value.trim();
        const email = document.getElementById('contact-email').value.trim();
        const subject = document.getElementById('contact-subject').value.trim();
        const message = document.getElementById('contact-message').value.trim();

        // --- Validation ---
        let hasError = false;

        if (!name) {
            showError('error-name', 'Name is required.');
            hasError = true;
        }

        if (!email) {
            showError('error-email', 'Email is required.');
            hasError = true;
        } else if (!isValidEmail(email)) {
            showError('error-email', 'Please enter a valid email address.');
            hasError = true;
        }

        if (!subject) {
            showError('error-subject', 'Subject is required.');
            hasError = true;
        }

        if (!message) {
            showError('error-message', 'Message is required.');
            hasError = true;
        }

        if (hasError) return;

        // --- Send via EmailJS ---
        const btn = document.getElementById('contact-submit');
        setButtonState(btn, 'sending');

        emailjs.send(EMAILJS_SERVICE_ID, EMAILJS_TEMPLATE_ID, {
            from_name: name,
            from_email: email,
            subject: subject,
            message: message,
        })
            .then(function () {
                setButtonState(btn, 'success');
                showStatus('success', '✓ Your message has been sent! I\'ll get back to you soon.');
                document.getElementById('contact-form').reset();
                setTimeout(function () {
                    setButtonState(btn, 'default');
                    clearStatus();
                }, 5000);
            })
            .catch(function (error) {
                console.error('EmailJS error:', error);
                setButtonState(btn, 'default');
                showStatus('error', '✗ Something went wrong. Please try again or email me directly.');
            });
    }

    // --- Helpers ---

    function isValidEmail(email) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

    function showError(id, msg) {
        const el = document.getElementById(id);
        if (el) { el.textContent = msg; el.style.display = 'block'; }
    }

    function clearErrors() {
        ['error-name', 'error-email', 'error-subject', 'error-message'].forEach(function (id) {
            const el = document.getElementById(id);
            if (el) { el.textContent = ''; el.style.display = 'none'; }
        });
    }

    function showStatus(type, msg) {
        const el = document.getElementById('form-status');
        if (!el) return;
        el.textContent = msg;
        el.className = type === 'success' ? 'form-status-success' : 'form-status-error';
        el.style.display = 'block';
    }

    function clearStatus() {
        const el = document.getElementById('form-status');
        if (el) { el.textContent = ''; el.style.display = 'none'; }
    }

    function setButtonState(btn, state) {
        if (!btn) return;
        if (state === 'sending') {
            btn.textContent = 'Sending…';
            btn.disabled = true;
            btn.style.opacity = '0.7';
        } else if (state === 'success') {
            btn.textContent = 'Sent!';
            btn.disabled = true;
            btn.style.opacity = '0.7';
        } else {
            btn.textContent = 'Send Message';
            btn.disabled = false;
            btn.style.opacity = '1';
        }
    }
})();
