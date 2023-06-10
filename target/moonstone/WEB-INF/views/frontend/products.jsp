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

<layout:extends name="base">
    <layout:put block="stylecss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/products.css"/>
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div id="body">
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
                        <div class="product">
                            <div class="product-img" style="
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;">
                                <img src="assets/images/images%20(5).jpeg">

                            </div>
                            <div class="product-det">
                                <div class="product-det-left">
                                    <div class="product-det-left-top"><span class="item-name">Code: BTH01</span></div>

                                    <div class="product-det-left-bottom"><span class="item-price">Rs. 3500.00</span>
                                    </div>
                                </div>
                                <div class="product-det-right">
                                    <div class="product-det-right-top"><span class="qty-label">Qty : </span><span
                                            class="qty">12</span>&nbsp;&nbsp;
                                    </div>
                                    <div class="product-det-right-bottom">
                                        <button class="sell-btn"><a href="viewproduct"
                                                                    style="text-decoration: none; color: white;">Sell</a>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product-img" style="
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;">

                            </div>
                            <div class="product-det">

                            </div>
                        </div>
                        <div class="product">
                            <div class="product-img" style=" background-image: url('images/plant4.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;">

                            </div>
                            <div class="product-det">

                            </div>
                        </div>
                        <div class="product">
                            <div class="product-img" style="
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;">
                                <img src="">

                            </div>
                            <div class="product-det">

                            </div>
                        </div>
                    </div>
                    <div class="product-row1">
                        <div class="product"></div>
                        <div class="product"></div>
                        <div class="product"></div>
                        <div class="product"></div>
                    </div>
                </div>
            </section>
        </div>
    </layout:put>
</layout:extends>
<%--        <script src="assets/JS/navigation.js"></script>--%>
<%--        <jsp:include page="footer.jsp"/>--%>