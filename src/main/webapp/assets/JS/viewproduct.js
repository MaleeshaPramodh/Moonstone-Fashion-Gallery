document.addEventListener("DOMContentLoaded", function() {
    const sliderImages = document.querySelectorAll(".slider img");
    const sliderPrevBtn = document.querySelector(".slider-prev");
    const sliderNextBtn = document.querySelector(".slider-next");
    let currentImage = 0;

    function showImage(index) {
        sliderImages.forEach((image) => {
            image.classList.remove("active");
        });
        sliderImages[index].classList.add("active");
    }

    function prevImage() {
        currentImage--;
        if (currentImage < 0) {
            currentImage = sliderImages.length - 1;
        }
        showImage(currentImage);
    }

    function nextImage() {
        currentImage++;
        if (currentImage >= sliderImages.length) {
            currentImage = 0;
        }
        showImage(currentImage);
    }

    sliderPrevBtn.addEventListener("click", prevImage);
    sliderNextBtn.addEventListener("click", nextImage);

    const decreaseBtn = document.querySelector(".decrease");
    const increaseBtn = document.querySelector(".increase");
    const quantityInput = document.querySelector(".quantity-input");
    const availability = document.querySelector(".availability span");
    const addToCartBtn = document.querySelector(".add-to-cart");

    const sizeSelect = document.getElementById("size-select");
    const selectedSize = sizeSelect.value;

    decreaseBtn.addEventListener("click", function() {
        let quantity = parseInt(quantityInput.value);
        if (quantity > 1) {
            quantity--;
            quantityInput.value = quantity;
        }
    });

    increaseBtn.addEventListener("click", function() {
        let quantity = parseInt(quantityInput.value);
        if (quantity < parseInt(availability.textContent)) {
            quantity++;
            quantityInput.value = quantity;
        }
    });

    addToCartBtn.addEventListener("click", function() {
        addToCartBtn.classList.add("animate");
        setTimeout(function() {
            addToCartBtn.classList.remove("animate");
        }, 500);
    });
});


