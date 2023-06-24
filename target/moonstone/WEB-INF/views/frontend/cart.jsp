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
    <link rel="shortcut icon" href="assets/images/—Pngtree—.png"/>
</head>

<body class="boody">
<header id="site-header">
    <div class="container">
        <h1>Shopping cart</h1>
    </div>
</header>

<div class="container">

    <section id="cart">
        <article class="product">
            <header>
                <a class="remove">
                    <img src="assets/images/images%20(5).jpeg" alt="">

                    <h3>Remove product</h3>
                </a>
            </header>

            <div class="content">

                <h1>Product name</h1>

                This is description.
                Code: BTH01

                <div title="You have selected this product to be shipped in the color yellow." style="top: 0" class="color yellow"></div>
                <div style="top: 43px" class="type small">XS</div>
            </div>

            <footer class="content">
                <span class="qt-minus">-</span>
                <span class="qt">2</span>
                <span class="qt-plus">+</span>

                <h2 class="full-price">
                    Rs.3500.00
                </h2>

                <h2 class="price">
                    Rs.7000.00
                </h2>
            </footer>
        </article>

<%--        <article class="product">--%>
<%--            <header>--%>
<%--                <a class="remove">--%>
<%--                    <img src="" alt="">--%>

<%--                    <h3>Remove product</h3>--%>
<%--                </a>--%>
<%--            </header>--%>

<%--            <div class="content">--%>

<%--                <h1>Product name</h1>--%>

<%--                This is description.--%>

<%--                <div title="You have selected this product to be shipped in the color red." style="top: 0" class="color red"></div>--%>
<%--                <div title="You have selected this product to be shipped sized Small."  style="top: 43px" class="type small">Small</div>--%>
<%--            </div>--%>

<%--            <footer class="content">--%>

<%--                <span class="qt-minus">-</span>--%>
<%--                <span class="qt">1</span>--%>
<%--                <span class="qt-plus">+</span>--%>

<%--                <h2 class="full-price">--%>
<%--                    Rs.79.99--%>
<%--                </h2>--%>

<%--                <h2 class="price">--%>
<%--                    Rs.79.99--%>
<%--                </h2>--%>
<%--            </footer>--%>
<%--        </article>--%>

<%--        <article class="product">--%>
<%--            <header>--%>
<%--                <a class="remove">--%>
<%--                    <img src="" alt="">--%>

<%--                    <h3>Remove product</h3>--%>
<%--                </a>--%>
<%--            </header>--%>

<%--            <div class="content">--%>

<%--                <h1>Product name</h1>--%>

<%--                This is description.--%>

<%--                <div title="You have selected this product to be shipped in the color blue." style="top: 0" class="color blue"></div>--%>
<%--                <div style="top: 43px" class="type small">Large</div>--%>
<%--            </div>--%>

<%--            <footer class="content">--%>

<%--                <span class="qt-minus">-</span>--%>
<%--                <span class="qt">3</span>--%>
<%--                <span class="qt-plus">+</span>--%>

<%--                <h2 class="full-price">--%>
<%--                    Rs.53.99--%>
<%--                </h2>--%>

<%--                <h2 class="price">--%>
<%--                    Rs.17.99--%>
<%--                </h2>--%>
<%--            </footer>--%>
<%--        </article>--%>

    </section>

</div>

<footer id="site-footer">
    <div class="container clearfix">

        <div class="left">
            <h2 class="subtotal">Subtotal: Rs.<span>7000.00</span></h2>
<%--            <h3 class="tax">Taxes (5%): Rs.<span>8.2</span></h3>--%>
            <h3 class="shipping">Shipping: Rs.<span>500.00</span></h3>
        </div>

        <div class="right">
            <h1 class="total">Total: Rs.<span>7500.00</span></h1>
            <a class="btn">Checkout</a>
        </div>

    </div>
</footer>
<script src="assets/JS/cart.js"></script>
</body>
</html>
