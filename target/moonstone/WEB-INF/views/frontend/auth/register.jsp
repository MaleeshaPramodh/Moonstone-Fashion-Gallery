<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/21/2023
  Time: 1:36 AM
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
        <div class="close" style="position: absolute;"><a href="/moonstone"><img src="assets/images/icons8-close-16.png"></a></div>
        <div class="head-1">
            <h1 class="login-head">Get Signed Up</h1>
        </div>
        <div class="inner">
            <div class="image-div">
                <img style="height: 100%; width: 100%;" src="assets/images/download%20(1).png" alt="">
            </div>
            <c:if test="${not empty sessionScope.error}">
                <span style="color: red">${sessionScope.error}</span>
                <c:remove var="error" scope="session"/>
            </c:if>
            <form id="login" class="data-input-form" action="register" method="post"  action="login.jsp">
                <br/>
                <br/>
                <br/>
                <br/>
                <input type="text"  class="user-input-field" placeholder="Please Enter Your Username"   name="name"  autocomplete="off" required />
                <br/>
                <input type="text"  class="user-input-field" placeholder="Please Enter Your Email"   name="email"  autocomplete="off" required />
                <br/>
                <input type="password"  class="user-input-field" placeholder="Please Enter Your Password"   name="password"   autocomplete="off" required />
                <br/>
                <button type="submit" class="submit-button">Sign Up</button>
                <br/>
                <br/>
                <br/>
                <br/>
                <a href="login" class="anchorTag">Do Have An Account? Sign In</a>
            </form>
        </div>
    </div>
</div>
<script  type="text/javascript" src="assets/JS/login.js"></script>
</body>
</html>
