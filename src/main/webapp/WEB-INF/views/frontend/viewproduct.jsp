<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/5/2023
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moonstone Fashion</title>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/viewproduct.css"/>
    <link rel="shortcut icon" href="assets/images/—Pngtree—.png"/>
</head>

<body>
<div class="product-view">
    <div class="slider">
        <img class="active" src="assets/images/download%20(1).jpeg" alt="Default Product Image">
        <img src="assets/images/download%20(1).png" alt="Product Image 1">
        <img src="assets/images/images%20(5).jpeg" alt="Product Image 2">
    </div>
    <div class="slider-controls">
        <button class="slider-prev"><i class="fas fa-chevron-left"><img
                src="assets/images/OetYoGJk1CCi.gif"/></i></button>
        <button class="slider-next"><i class="fas fa-chevron-right"><img src="assets/images/STztBzcrZxVm.gif"/></i>
        </button>
    </div>
    <div class="product-details">
        <a href="products"><img src="assets/images/icons8-close-16.png" style="margin-left: 100%;"/></a>
        <h1>Product Name</h1>
        </br>
        <p>This is Description. jweghwj dbjwdwe jqehdqwjhqjkwk jqwheiqwjjkq wheqwh. gewhfgew werweewh huw huwej
            jwehe wqe. wqewqeqw qwe wqeqw e.</p>
        <p class="code">Code: BTH01</p>
        </br>
        <div class="size-selection">
            <label for="size-select">Select Size:</label>
            <select id="size-select">
                <option value="XSmall">XS</option>
                <option value="Small">S</option>
                <option value="Medium">M</option>
                <option value="Large">L</option>
                <option value="XLarge">XL</option>
                <option value="XXLarge">XXL</option>
            </select>
        </div>
        <p class="availability">Available: <span>5</span></p>
        <div class="quantity">
            <button class="decrease">-</button>
            <input type="number" class="quantity-input" value="1" min="1">
            <button class="increase">+</button>
        </div>
        <p class="price">Rs.3500.00</p>
        <a href="/moonstone/cart" style="text-decoration: none;">
            <button class="add-to-cart">Add to Cart</button>
        </a>
    </div>
</div>
<script src="https://kit.fontawesome.com/your-fontawesome-kit.js"></script>
<script src="assets/JS/viewproduct.js"></script>
</body>
</html>




