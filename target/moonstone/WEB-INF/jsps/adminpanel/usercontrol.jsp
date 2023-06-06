<jsp:include page="adminheader.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/6/2023
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moonstone Fashion</title>
    <link type="text/css" rel="stylesheet" href="SCSS/css/usercontrol.css"/>
</head>
<body>
<div class="container">
    <div class="main-box">
        <h1>User Control Panel</h1>

        <form class="user-form">

            <div class="top-div">
                <div class="section1">
                    <div class="form-group">
                        <label for="name">Username</label>
                        <input type="text" id="name" name="name" placeholder="Enter Username" required>
                    </div>
                    <div class="form-group margin-left">
                        <label>Mobile</label>
                        <input type="text" id="phone" name="phone" placeholder="Enter Mobile Number" required>
                    </div>
                </div>

                <div class="section1">
                    <div class="form-group">
                        <label>Post Code</label>
                        <input type="text" id="post_code" name="post_code" placeholder="Enter Post Code" required>
                    </div>
                    <div class="form-group margin-left">
                        <label>City</label>
                        <input type="text" id="city" name="city" placeholder="Enter City" required>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required>
            </div>
            <div class="form-group">
                <label>Address</label>
                <input type="email" id="address" name="address" placeholder="Enter Address" required>
            </div>

            <div class="form-group">
                <button type="submit" class="btn-add">Save</button>
            </div>
        </form>

        <div class="count">
            <p>All Users:</p>
            <div class="num">
                <p>100</p>
            </div>
        </div>

        <table class="user-table">
            <thead>
            <tr>
                <th>Username</th>
                <th>Mobile</th>
                <th>Post Code</th>
                <th>City</th>
                <th>Email</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Maleesha</td>
                <td>0766317182</td>
                <td>10325</td>
                <td>Pannipitiya</td>
                <td>maleesha@gmail.com</td>
                <td>235/B Rathmaldeniya, Arawwala, Pannipitiya.</td>
                <td>
                    <button class="btn-edit">Edit</button>
                    <button class="btn-delete">Delete</button>
                </td>
            </tr>
            <tr>
                <td>Promodh</td>
                <td>0766317182</td>
                <td>10325</td>
                <td>Pannipitiya</td>
                <td>pramodh@gmail.com</td>
                <td>235/B Rathmaldeniya, Arawwala, Pannipitiya.</td>
                <td>
                    <button class="btn-edit">Edit</button>
                    <button class="btn-delete">Delete</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div>
</body>
</html>
