<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 6/12/2023
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base">
    <layout:put block="checkoutcss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/css/checkout.css"/>
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div class="checkout">
            <h2 class="checkout__title">Checkout</h2>
            <form class="checkout__form">
                <div class="checkout__form-group">
                    <label for="name" class="checkout__label">Name</label>
                    <input type="text" id="name" class="checkout__input" required>
                </div>
                <div class="checkout__form-group">
                    <label for="email" class="checkout__label">Email</label>
                    <input type="email" id="email" class="checkout__input" required>
                </div>
                <div class="checkout__form-group">
                    <label for="address" class="checkout__label">Address</label>
                    <textarea id="address" class="checkout__textarea" required></textarea>
                </div>
                <button class="checkout__submit-button">Submit Order</button>
            </form>
        </div>
    </layout:put>
</layout:extends>
