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

    function updateCartItems() {
        cartItemsList.innerHTML = "";
        cartItems.forEach(item => {
            const li = document.createElement("li");
            li.innerHTML = `
        <img src="${item.image}" alt="${item.name}" />
        <div class="item-info">
          <h3>${item.name}</h3>
          <p>Price: $${item.price.toFixed(2)}</p>
        </div>
        <div class="item-quantity">
          <input type="number" min="1" value="${item.quantity}" onchange="updateCartItemQuantity(${item.id}, this.value)" />
          <button class="remove-btn" onclick="removeCartItem(${item.id})">Remove</button>
        </div>
      `;
            cartItemsList.appendChild(li);
        });
    }

    updateCartSummary();
    updateCartItems();
});