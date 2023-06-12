<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/8/2023
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@500;600&family=Ranchers&display=swap"
          rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@1,700&display=swap" rel="stylesheet">

    <link rel="shortcut icon" href="assets/images/—Pngtree—.png"/>

    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/header.css"/>
    <layout:block name="stylecss"></layout:block>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/footer.css"/>
    <layout:block name="stylecss"></layout:block>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/aboutus.css"/>
    <layout:block name="stylecss"></layout:block>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/gallery.css"/>
    <layout:block name="stylecss"></layout:block>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/products.css"/>
    <layout:block name="stylecss"></layout:block>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/profile.css"/>
    <layout:block name="stylecss"></layout:block>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/viewproduct.css"/>


</head>


<body>

<header>
    <div id="nav-div" class="nav-div">
        <table>
            <tr>
                <td class="col1">
                    <a class="back" href="/moonstone">
                        <div class="div-logo"><img class="img-logo" src="assets/images/—Pngtree—.png">&nbsp;&nbsp;
                            <h1 class="logo-name">Moonstone Fashion</h1>
                        </div>
                    </a>
                </td>

                <td class="col2">
                    <div class="col2-div">
                        <a class="menu" href="/moonstone/gallery">
                            <span class="s1">Gallery</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </a>
                        <a id="products" class="menu" href="/moonstone/products">
                            <span class="s1">Shop</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </a>
                        <a class="menu" href="/moonstone/aboutus">
                            <span class="s1">About Us</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </a>
                        <a class="menu" href="login">
                            <span class="s1">Login</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </a>
                    </div>
                </td>
            </tr>
        </table>
        <div class="facebook">
            <%
                String dynamicUrl = "https://web.facebook.com/people/Moonstone-Fashion-Gallery/100050141931959/";
            %>
            <a href="<%= dynamicUrl %>"><img src="assets/images/icons8-facebook-48.png" class="img-log"></a>

            <%
                String phoneNumber = "772973525";
                String whatsappLink = "https://api.whatsapp.com/send?phone=" + phoneNumber;
            %>
            <a href="<%= whatsappLink %>"><img src="assets/images/icons8-whatsapp-48.png" class="img-log"></a>

            <%
                String dynamic_Url = "https://www.instagram.com/moonstone_fashion_gallery/";
            %>
            <a href="<%= dynamic_Url %>"><img src="assets/images/icons8-instagram-48.png" class="img-log"></a>
        </div>
    </div>
</header>
<layout:block name="index">

</layout:block>
<layout:block name="aboutus">

</layout:block>
<layout:block name="gallery">

</layout:block>
<layout:block name="product">

</layout:block>
<layout:block name="profile">

</layout:block>
<layout:block name="viewproduct">

</layout:block>
<footer class="ft">
    <div>
        <h1>Moonstone Fashion</h1>
    </div>
    <div class="contact">
        <div>
            <h3>Facebook</h3>
            <h3>WhatsApp</h3>
            <h3>Instagram</h3>
        </div>
        <div>
            <h3>+94772973525</h3>
            <h3>moonstonefashiongallery@gmail.com</h3>
        </div>
    </div>
    <p>&copy; 2023 Moonstone Fashion Gallery All rights reserved. Unauthorized use of these photos and video, copying,
        publishing and distribution is prohibited.</p>
</footer>

<script src="assets/JS/navigation.js"></script>
<script src="assets/JS/productpage.js"></script>
<script src="assets/JS/aboutus.js"></script>
<script src="assets/JS/gallery.js"></script>
<script src="https://kit.fontawesome.com/your-fontawesome-kit.js"></script>
<script src="assets/JS/viewproduct.js"></script>
<script src="assets/JS/footer.js"></script>
</body>
</html>
