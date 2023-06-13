<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/12/2023
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base">
    <layout:put block="stylecss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/css/checkout.css"/>
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div>
            <div class="up-div">
                <img src="assets/images/blue-gradient-abstract-background-empty-room-with-space-your-text-picture.jpg" class="up-img">
            </div>
            <div class="cart">
                <h2 class="cart__title">Shopping Cart</h2>
                <ul class="cart__items">
                    <li class="cart__item">
                        <img src="product1.jpg" alt="Product 1" class="cart__item-image">
                        <div class="cart__item-details">
                            <h3 class="cart__item-name">Product 1</h3>
                            <p class="cart__item-price">$10.00</p>
                            <div class="cart__item-quantity">
                                <button class="cart__quantity-btn">-</button>
                                <span class="cart__quantity">1</span>
                                <button class="cart__quantity-btn">+</button>
                            </div>
                        </div>
                        <button class="cart__item-remove-btn">Remove</button>
                    </li>
                    <!-- Additional cart items will be dynamically added here -->
                </ul>
                <div class="cart__total">
                    <h3 class="cart__total-title">Total: <span class="cart__total-amount">$10.00</span></h3>
                    <button class="cart__checkout-button">Checkout</button>
                </div>
            </div>
        </div>

    </layout:put>
</layout:extends>
