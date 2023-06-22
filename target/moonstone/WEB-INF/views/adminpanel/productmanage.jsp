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

        <form class="user-form">

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
                </div>
            </div>


            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" id="description" name="description" placeholder="Enter Description" required>
            </div>
            <div class="img-put">
                <div class="image-upload">
                    <input type="file" id="upload-input" accept="image/*" onchange="previewImage(event)">
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
                <th>Product name</th>
                <th>Code</th>
                <th>Qty</th>
                <th>Sizes</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Wrap Dress</td>
                <td>BHD0112</td>
                <td>10</td>
                <td>XS, S, M, L, XL, XXL</td>
                <td>This is Description</td>
                <td>
                    <button class="btn-edit">Edit</button>
                    <button class="btn-delete">Delete</button>
                </td>
            </tr>
            <tr>
                <td>Sheath Dress</td>
                <td>BHD0221</td>
                <td>15</td>
                <td>S, M, L, XL</td>
                <td>This is Description</td>
                <td>
                    <button class="btn-edit">Edit</button>
                    <button class="btn-delete">Delete</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div>
<script src="assets/JS/productmanage.js"></script>
</body>
</html>
