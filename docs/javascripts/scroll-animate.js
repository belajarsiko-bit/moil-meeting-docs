document.addEventListener("DOMContentLoaded", function () {
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('is-visible');
                observer.unobserve(entry.target); // Only animate once
            }
        });
    }, observerOptions);

    const elementsToAnimate = document.querySelectorAll(
        '.md-typeset h1, .md-typeset h2, .md-typeset h3, .md-typeset p, .md-typeset ul, .md-typeset ol, .md-typeset table, .md-typeset .admonition, .md-typeset img'
    );

    elementsToAnimate.forEach(el => {
        observer.observe(el);
    });
});
