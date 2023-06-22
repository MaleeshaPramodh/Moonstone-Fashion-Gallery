<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/21/2023
  Time: 1:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moonstone Fashion</title>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/login.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@500;600&family=Ranchers&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/—Pngtree—.png"/>
</head>
<body>
<div class="box-outer">
    <div class="box-body-inner">
        <div class="close"><a href="/moonstone"><img src="assets/images/icons8-close-16.png"></a></div>
        <div class="head-1">
            <h1 class="login-head">Get Signed In </h1>
        </div>
        <div class="inner">
            <div class="image-div">
                <img style="height: 100%; width: 100%;" src="assets/images/download%20(1).png" alt="">
            </div>
            <form id="login" class="data-input-form" method="post"  action="/moonstone">
                <br/>
                <br/>
                <br/>
                <br/>
                <input type="text"  class="user-input-field" placeholder="Please Enter Your Username"   name="name"  autocomplete="off" required />
                <br/>
                <input type="password"  class="user-input-field" placeholder="Please Enter Your Password"   name="password"   autocomplete="off" required />
                <br/>
                <button type="submit" class="submit-button">Sign In</button>
                <br/>
                <br/>
                <br/>
                <br/>
                <a href="register" class="anchorTag">Don't Have An Account? Sign Up</a>
            </form>
        </div>
    </div>
</div>
<script  type="text/javascript" src="assets/JS/login.js"></script>
</body>
</html>
