document.addEventListener("DOMContentLoaded", function() {
    const cartItems = [
        { id: 1, name: "Item 1", price: 9.99, quantity: 2, image: "item1.jpg" },
        { id: 2, name: "Item 2", price: 14.99, quantity: 1, image: "item2.jpg" },
        { id: 3, name: "Item 3", price: 19.99, quantity: 3, image: "item3.jpg" }
    ];
    const cartSummary = document.getElementById("cart-summary");
    const totalItems = document.getElementById("total-items");
    const totalPrice = document.getElementById("total-price");
    const cartItemsList = document.getElementById("cart-items");

    function updateCartSummary() {
        let totalItemQuantity = 0;
        let totalPriceValue = 0;

        cartItems.forEach(item => {
            totalItemQuantity += item.quantity;
            totalPriceValue += item.price * item.quantity;
        });

        totalItems.textContent = `Total Items: ${totalItemQuantity}`;
        totalPrice.textContent = `Total Price: $${totalPriceValue.toFixed(2)}`;
    }

    function updateCartItemQuantity(itemId, newQuantity) {
        const item = cartItems.find(item => item.id === itemId);
        if (item) {
            item.quantity = newQuantity;
            updateCartSummary();
        }
    }

    function removeCartItem(itemId) {
        const itemIndex = cartItems.findIndex(item => item.id === itemId);
        if (itemIndex !== -1) {
            cartItems.splice(itemIndex, 1);
            updateCartSummary();
            updateCartItems();
        }
    }

    function addItemToCart (price, imageSrc) {
        var productRow = document.createElement('div');
        productRow.classList.add('product-row');
        var productRows = document.getElementsByClassName('product-rows')[0];
        var cartImage = document.getElementsByClassName('cart-image');

        for (var i = 0; i < cartImage.length; i++){
            if (cartImage[i].src == imageSrc){
                alert ('This item has already been added to the cart')
                return;
            }
        }

        var cartRowItems = `
  <div class="product-row">
        <img class="cart-image" src="${imageSrc}" alt="">
        <span class ="cart-price">${price}</span>
        <input class="product-quantity" type="number" value="1">
        <button class="remove-btn">Remove</button>
        </div>
        
      `
        productRow.innerHTML = cartRowItems;
        productRows.append(productRow);
        productRow.getElementsByClassName('remove-btn')[0].addEventListener('click', removeItem)
        productRow.getElementsByClassName('product-quantity')[0].addEventListener('change', changeQuantity)
        updateCartPrice()
    }

    updateCartSummary();
    updateCartItems();
});