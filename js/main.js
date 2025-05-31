// Mobile menu toggle
document.addEventListener('DOMContentLoaded', () => {
    // Mobile menu functionality
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const navLinks = document.querySelector('.nav-links');

    if (menuToggle && navLinks) {
        menuToggle.addEventListener('click', () => {
            navLinks.classList.toggle('active');
            menuToggle.classList.toggle('active');
        });
    }

    // Update copyright year
    const yearElement = document.getElementById('year');
    if (yearElement) {
        yearElement.textContent = new Date().getFullYear();
    }

    // Email protection
    const emailLink = document.getElementById('email-link');
    if (emailLink) {
        emailLink.addEventListener('click', (e) => {
            e.preventDefault();
            const email = emailLink.getAttribute('data-email');
            emailLink.href = 'mailto:' + email;
            emailLink.textContent = email;
        });
    }
});