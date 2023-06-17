<%--<jsp:include page="header.jsp"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/27/2023
  Time: 6:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base">
    <layout:put block="stylecss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/css/gallery.css"/>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div class="body" id="body">
            <div class="up-div">
                <div class="up-name">
                    <h1>Moonstone Fashion</h1>
                </div>
                <div class="up-name1">
                    <h1>Gallery</h1>
                </div>
                <img src="assets/images/online-fashion-shopping-with-laptop.jpg" class="up-img">
            </div>
            <div class="popup-main-div">
                <div class="popup-div" onclick="closeExtractedImage()">
                    <img class="extracted-image" id="extracted-image" onclick="extractImage()"/>
                </div>
            </div>

            <div class="full-div" class="image-container">
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/9.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/4.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/10.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/2.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
            </div>

            <div class="full-div" class="image-container">
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/8.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/7.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/6.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
                <div data-aos="zoom-out" class="img-div"><img src="assets/images/5.jpg" class="gallery-img" onclick="extractImage(this)">
                </div>
            </div>

        </div>

    </layout:put>
</layout:extends>
<%--        <script src="assets/JS/gallery.js"></script>--%>
<%--        <script src="assets/JS/navigation.js"></script>--%>
<%--        <jsp:include page="footer.jsp"/>--%>
