<%--<jsp:include page="header.jsp"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/25/2023
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<layout:extends name="base">
    <layout:put block="stylecss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/products.css"/>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div id="body">
            <div class="up-div">
                <div data-aos="zoom-in" class="up-name">
                    <h1>Moonstone Fashion</h1>
                </div>
                <div data-aos="fade-down" class="up-name1">
                    <h1>Buy Your Products</h1>
                </div>
                <img src="assets/images/online-fashion-shopping-with-laptop%20(3).jpg" class="up-img">
            </div>

            <section class="section2" style="margin-top: 20vh;">
                <div class="section-2-div-top-search">
                    <form method="post" action="#" class="product-search-form">
                        <input type="text" name="product_name" placeholder="Please Enter The Product Name Here"
                               class="search_field"/>
                        <input type="submit" value="SEARCH" class="search-button"/>
                    </form>
                </div>

                <div class="section-2-product-list">
                    <div class="product-row1">
                        <c:forEach items="${requestScope.products}" var="product">
                            <div class="pro">
                                <div class="pro-img" style="
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;">
                                    <img src="assets/images/${product.pimg}">

                                </div>
                                <div class="product-det">
                                    <div class="product-det-left">
                                        <div class="product-det-left-top">
                                            <span class="item-name">${product.pname}</span>
                                            <span class="item-name">${product.code}</span>
                                        </div>

                                        <div class="product-det-left-bottom">
                                            <span class="item-price">LKR ${product.price} </span>
                                        </div>
                                    </div>
                                    <div class="product-det-right">
                                        <div class="product-det-right-top">
                                            <span class="qty-label">${product.qty}</span>
<%--                                            <span class="qty">12</span>&nbsp;&nbsp;--%>
                                        </div>
                                        <div class="product-det-right-bottom">
                                            <button class="sell-btn"><a href="viewproduct"
                                                                        style="text-decoration: none; color: white;">Sell</a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                            <%--                        <div class="pro">--%>
                            <%--                            <div class="pro-img" style="--%>
                            <%--        background-size: cover;--%>
                            <%--        background-position: center;--%>
                            <%--        background-repeat: no-repeat;">--%>

                            <%--                            </div>--%>
                            <%--                            <div class="product-det">--%>

                            <%--                            </div>--%>
                            <%--                        </div>--%>
                            <%--                        <div class="pro">--%>
                            <%--                            <div class="pro-img" style=" background-image: url('images/plant4.jpg');--%>
                            <%--        background-size: cover;--%>
                            <%--        background-position: center;--%>
                            <%--        background-repeat: no-repeat;">--%>

                            <%--                            </div>--%>
                            <%--                            <div class="product-det">--%>

                            <%--                            </div>--%>
                            <%--                        </div>--%>
                            <%--                        <div class="pro">--%>
                            <%--                            <div class="pro-img" style="--%>
                            <%--        background-size: cover;--%>
                            <%--        background-position: center;--%>
                            <%--        background-repeat: no-repeat;">--%>
                            <%--                                <img src="">--%>

                            <%--                            </div>--%>
                            <%--                            <div class="product-det">--%>

                            <%--                            </div>--%>
                            <%--                        </div>--%>

                            <%--                    </div>--%>
                            <%--                    <div class="product-row1">--%>
                            <%--                        <div class="pro"></div>--%>
                            <%--                        <div class="pro"></div>--%>
                            <%--                        <div class="pro"></div>--%>
                            <%--                        <div class="pro"></div>--%>
                            <%--                    </div>--%>
<%--                    </div>--%>
            </section>
        </div>
    </layout:put>
</layout:extends>
<%--        <script src="assets/JS/navigation.js"></script>--%>
<%--        <jsp:include page="footer.jsp"/>--%>