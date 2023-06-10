// Smooth scrolling for navigation
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('products')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});
