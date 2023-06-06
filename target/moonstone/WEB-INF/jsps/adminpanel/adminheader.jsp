<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/6/2023
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link type="text/css" rel="stylesheet" href="SCSS/css/adminheader.css"/>
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
                <a class="back" href="/moonstone/adminhome">
                    <div class="div-logo"><img style="display: flex;" class="img-logo" src="images/—Pngtree—.png">&nbsp;&nbsp;
                        <h1 class="logo-name">Admin Panel</h1>
                    </div>
                </a>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="col2">
                <div class="col2-div">
                    <a class="menu" href="/moonstone">
                        <span class="s1">Dashboard</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a id="products" class="menu" href="/moonstone/usercontrol">
                        <span class="s1">User</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a class="menu" href="">
                        <span class="s1">Gallery</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a class="menu" href="">
                        <span class="s1">Product</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
