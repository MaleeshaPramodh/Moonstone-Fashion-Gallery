<%--<jsp:include page="header.jsp"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 5/21/2023
  Time: 12:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base">
    <layout:put block="stylecss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/css/home.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@1,700&display=swap"
              rel="stylesheet">
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div class="body" id="body">
            <div class="up-div">
                <div class="up-name">
                    <h1>Moonstone Fashion</h1>
                </div>
                <img src="assets/images/online-fashion-shopping-with-computer.jpg" class="up-img">
            </div>
            <div class="div-body1">
                <div class="ad-div"><img src="assets/images/images%20(4).jpeg" class="ad-img"></div>
                <div class="div1-bdy">
                    <h1 class="ad-text1">I SPEAK FASHION</h1>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <h2 class="ad-text2">Moonstone Fashion Gallery</h2>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <h3 class="ad-text3">Hotline : 0772973525</h3>
                    <h3 class="ad-text4">keels Upstairs, Wijerama, Nugegoda.</h3>
                </div>
            </div>

            &nbsp;
            <div class="div2">
                <div class="video-div">
                    <video width="640" height="480" src="assets/videos/fashion.mp4" class="video" autoplay loop muted/>
                </div>

                <div class="phar">&nbsp;
                    <div class="para-text">
                        <p class="p">
                            The extraordinary designs, brightness & eye catching colors of our Exclusive Moonstone Hand
                            painted
                            Batik clothing will always makes you shine!
                        </p>
                        <p class="p">
                            Very Limited Edition Only !
                            Hurry up!! Inbox us to get it for your now!
                        </p>
                        <p class="p1">
                            Sizes Available: XS | S | M | L | XL | XXL
                        </p>
                        <a style="text-decoration: none;" href="/moonstone/products"><button class="buy-now">Shop Now</button></a>
                    </div>
                </div>
            </div>
            <div>
                <div class="ad-div2">
                    <h1>OUT LOOK</h1>
                    <div class="img-line">
                        <img src="assets/images/1.jpg" class="ad-img2">
                        <img src="assets/images/WhatsApp%20Image%202023-05-27%20at%2018.51.21.jpg" class="ad-img2">
                        <img src="assets/images/3.jpg" class="ad-img2">
                    </div>

                </div>
            </div>

            <div class="div-body2">
                <div class="video-div3">
                    <div class="text-div">
                        <h1>Limited Edition !</h1>
                    </div>
                    <div class="v2">
                        <video class="v1-video" src="assets/videos/Facebook%20video%20651517226781342.mp4"
                               class="video2" autoplay loop
                               muted/>
                    </div>
                </div>
                <div class="video-div2">
                    <div class="text-div1">
                        <h1>New Fashion !</h1>
                    </div>
                    <div class="v1">
                        <video class="v1-video" src="assets/videos/Facebook%20video%202813637768773544.mp4"
                               autoplay loop muted/>
                    </div>
                </div>
            </div>

        </div>
    </layout:put>
</layout:extends>


<%--<script src="assets/JS/navigation.js"></script>--%>
<%--<script src="assets/JS/productpage.js"></script>--%>

<%--<jsp:include page="footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>

