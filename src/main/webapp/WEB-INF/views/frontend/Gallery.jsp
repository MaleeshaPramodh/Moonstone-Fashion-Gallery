<jsp:include page="header.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/27/2023
  Time: 6:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moonstone Fashion</title>
    <link type="text/css" rel="stylesheet" href="assets/SCSS/css/gallery.css"/>
    <style>
        .image-container {
            display: inline-block;
            position: relative;
        }

        .extracted-image {
            position: absolute;
            top: -11%;
            left: -11%;
            width: 700px;
            height: 700px;
            border: 60px solid #ccc;
            border-color: black;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="body" id="body">
<div class="full-div" class="image-container">
<div class="img-div"><img src="images/9.jpg" class="gallery-img" onclick="extractImage(this)"></div>
<div class="img-div"><img src="images/4.jpg" class="gallery-img" onclick="extractImage(this)"></div>
<div class="img-div"><img src="images/10.jpg" class="gallery-img" onclick="extractImage(this)"></div>
    <div class="img-div"><img src="images/2.jpg" class="gallery-img" onclick="extractImage(this)"></div>

</div>
    <div class="full-div" class="image-container">
    <div class="img-div"><img src="images/8.jpg" class="gallery-img" onclick="extractImage(this)"></div>
    <div class="img-div"><img src="images/7.jpg" class="gallery-img" onclick="extractImage(this)"></div>
        <div class="img-div"><img src="images/6.jpg" class="gallery-img" onclick="extractImage(this)"></div>
        <div class="img-div"><img src="images/5.jpg" class="gallery-img" onclick="extractImage(this)"></div>
        <div class="popup-div"><img class="extracted-image" id="extracted-image" onclick="extractImage()"/></div>
    </div>
</div>
<script>
    var extractedImage = document.getElementById('extracted-image');
    function extractImage(imageElement) {
        extractedImage.src = imageElement.src;
        extractedImage.style.display = 'block';
    }
    function closeExtractedImage() {
        extractedImage.src = '';
        extractedImage.style.display = 'none';
    }
</script>
<script src="JS/navigation.js"></script>
<jsp:include page="footer.jsp"/>
</body>
</html>
