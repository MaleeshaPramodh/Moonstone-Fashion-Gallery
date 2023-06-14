<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 6/13/2023
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moonstone Fashion</title>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/cart.css"/>
</head>

<body>
<div class="cart">
    <h2>Shopping Cart</h2>
    <ul id="cart-items">
        <!-- Cart items will be dynamically added here -->
    </ul>
    <div id="cart-summary">
        <div id="total-items"></div>
        <div id="total-price"></div>
    </div>
    <div class="actions">
        <button id="checkout-btn">Checkout</button>
    </div>
</div>
<script src="assets/JS/cart.js"></script>
</body>
</html>
