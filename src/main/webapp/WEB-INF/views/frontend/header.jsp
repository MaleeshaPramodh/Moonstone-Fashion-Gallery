<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/25/2023
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/header.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@1,700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="images/—Pngtree—.png"/>
</head>

<body>
<div id="nav-div" class="nav-div">
    <table>
        <tr>
            <td class="col1">
                <a class="back" href="/moonstone"><div class="div-logo"><img class="img-logo" src="images/—Pngtree—.png">&nbsp;&nbsp;
                    <h1 class="logo-name">Moonstone Fashion</h1>
                </div></a>
            </td>

            <td class="col2">
                <div class="col2-div">
                    <a class="menu" href="/moonstone/gallery">
                        <span class="s1">Gallery</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a id="products" class="menu" href="/moonstone/products">
                        <span class="s1">Products</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <a href="<%= dynamicUrl %>"><img src="images/icons8-facebook-48.png" class="img-log"></a>

        <%
            String phoneNumber = "772973525";
            String whatsappLink = "https://api.whatsapp.com/send?phone=" + phoneNumber;
        %>
        <a href="<%= whatsappLink %>"><img src="images/icons8-whatsapp-48.png" class="img-log"></a>

        <%
            String dynamic_Url = "https://www.instagram.com/moonstone_fashion_gallery/";
        %>
        <a href="<%= dynamic_Url %>"><img src="images/icons8-instagram-48.png" class="img-log"></a>
    </div>
</div>
</body>
</html>
