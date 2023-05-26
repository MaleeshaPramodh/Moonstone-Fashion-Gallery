<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/25/2023
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link type="text/css" rel="stylesheet" href="SCSS/css/header.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@1,700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="images/—Pngtree—.png"/>
    <style>
        .nav-div{
            background-color: #333333;
            position: fixed;
            align-items: center;
            text-align: center;
            justify-content: space-between;
            top: 0;
            left: 0;
            width: 100%;
            height: 12vh;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0));
            transition: background-color 0.3s, height 0.3s;
            z-index: 999;
        }
    </style>
</head>
<body>
<div class="nav-div">
    <table>
        <tr>
            <td class="col1" style="width: 30%;">

                <div class="div-logo"><img class="img-logo" src="images/—Pngtree—.png">&nbsp;&nbsp;
                    <h1 style="font-size: 4vh; margin-left: 90px; margin-top: -40px; color: white; font-family: 'Josefin Sans', sans-serif;">Moonstone Fashion</h1>
                </div>

                <span style="color: #ffcc33;font-size: 15px;"></span></a>
            </td>
            <td>

            </td>
            <td>

            </td>

            <td class="col2" style="width: 100%;">
                <div style="margin-left: 50%;">
                    <a class="menu" href="" style="text-decoration: none;">
                        <span class="s1" style="color: white; font-family: 'Josefin Sans', sans-serif;">Gallery</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a class="menu" href="" style="text-decoration: none;">
                        <span class="s1" style="color: white; font-family: 'Josefin Sans', sans-serif;">Products</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a class="menu" href="" style="text-decoration: none;">
                        <span class="s1" style="color: white; font-family: 'Josefin Sans', sans-serif;">About Us</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                    <a class="menu" href="login" style="text-decoration: none;">
                        <span class="s1" style="color: white; font-family: 'Josefin Sans', sans-serif;">Login</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </a>
                </div>
            </td>

        </tr>
    </table>
</div>
</body>
</html>
