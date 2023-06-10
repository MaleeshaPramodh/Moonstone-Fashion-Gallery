<%--<jsp:include page="header.jsp"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/8/2023
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base">
    <layout:put block="stylecss" type="REPLACE">
        <title>Moonstone Fashion</title>
        <link type="text/css" rel="stylesheet" href="assets/SCSS/css/profile.css"/>
    </layout:put>
    <layout:put block="index" type="REPLACE">
        <div class="update-profile">
            <h1 class="update-profile-title">Update Profile</h1>
            <form class="update-profile-form">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email address">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password">
                </div>
                <div class="form-group">
                    <label for="avatar">Avatar</label>
                    <input type="file" id="avatar" name="avatar">
                </div>
                <button type="submit" class="btn-update-profile">Update</button>
            </form>
        </div>

    </layout:put>
</layout:extends>
<%--        <jsp:include page="footer.jsp"/>--%>