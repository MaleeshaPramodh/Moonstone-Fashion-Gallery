<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<jsp:include page="adminheader.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 6/6/2023
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Moonstone Fashion</title>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/productmanage.css"/>
</head>
<body>
<div class="container">
    <div class="main-box">
        <h1>Product Control Panel</h1>

        <form method="post" action="productmanage/add-products" class="user-form">

            <div class="top-div">
                <div class="section1">
                    <div class="form-group">
                        <label for="pname">Product name</label>
                        <input type="text" id="pname" name="pname" placeholder="Enter Product name" required>
                    </div>
                    <div class="form-group margin-left">
                        <label for="code">Code</label>
                        <input type="text" id="code" name="code" placeholder="Enter Code" required>
                    </div>
                </div>

                <div class="section1">
                    <div class="form-group">
                        <label for="qty">Quantities</label>
                        <input type="text" id="qty" name="qty" placeholder="Enter Quantities" required>
                    </div>
                    <div class="form-group margin-left">
                        <label for="size">Sizes</label>
                        <input type="text" id="size" name="size" placeholder="Enter Sizes" required>
                    </div>
                    <div class="form-group margin-left">
                        <label for="price">Price</label>
                        <input type="text" id="price" name="price" placeholder="Enter Price" required>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" id="description" name="description" placeholder="Enter Description" required>
            </div>
            <div class="img-put">
                <div class="image-upload">
                    <input type="file" id="upload-input" name="pimg" accept="image/*" onchange="previewImage(event)">
                    <label for="upload-input" id="upload-label">Choose Image</label>
                    <div id="image-preview"></div>
                </div>
            </div>


            <div class="form-group">
                <button type="submit" class="btn-add">Save</button>
            </div>
        </form>

        <div class="count">
            <p>All Products:</p>
            <div class="num">
                <p>100</p>
            </div>
        </div>

        <table class="user-table">
            <thead>
            <tr>
                <th>Name</th>
                <th>Code</th>
                <th>Qty</th>
                <th>Size</th>
                <th>Price</th>
                <th>Description</th>
                <th>Image</th>
                <th>Manage</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach items="${requestScope.products}" var="product">
                <tr>
                    <td> ${product.pname}
                    </td>
                    <td>${product.code}
                    </td>
                    <td>${product.qty}
                    </td>
                    <td>${product.size}
                    </td>
                    <td>${product.price}
                    </td>
                    <td>${product.description}
                    </td>
                    <td><img style="width: 100px; height: 100px; object-fit: cover;" src="assets/images/${product.pimg}">
                    </td>
                    <td>
                        <button class="btn-edit">Edit</button>
                        <form action="productmanage/delete-products" method="post">
                            <button class="btn-delete">Delete</button>
                        </form>

                    </td>
                </tr>
            </c:forEach>

            </tbody>


        </table>
    </div>

</div>
<script src="assets/JS/productmanage.js"></script>
</body>
</html>
