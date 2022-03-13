<%--
  Created by IntelliJ IDEA.
  User: HieuLe
  Date: 3/2/2022
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-image: url("https://w.wallhaven.cc/full/rd/wallhaven-rdwjj7.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        label{
            color: cadetblue;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
</head>
<body>
<%@ include file="common/header.jsp"%>
<div class="container">
    <h1 style="text-align: center">Sign up</h1>
    <form class="needs-validation" modelAttribute="request" method="POST">
        <div class="form-group mb-3">
            <label for="firstName">FirstName</label>
            <input path="firstName" type="text" class="form-control" id="firstName" placeholder="Enter firstName" name="firstName"
                   required
                   maxlength="50">
            <span id="firstName_error"></span>
        </div>
        <div class="form-group mb-3">
            <label for="lastName">LastName</label>
            <input path="lastName" type="text" class="form-control" id="lastName" placeholder="Enter lastName" name="lastName"
                   required
                   maxlength="50">
            <span id="lastName_error"></span>
        </div>
        <div class="form-group mb-3">
            <label for="email">Email</label>
            <input path="email" type="email" class="form-control" id="email" placeholder="Enter email" name="email"
                   required
                   maxlength="50">
            <span id="email_error"></span>
        </div>
        <div class="form-group mb-3">
            <label for="password">Mobie phone</label>
            <input path="password" type="password" class="form-control" id="password" placeholder="Enter password"
                   name="password" required >
            <span id="password_error"></span>
        </div>
        <button type="submit" class="btn btn-info" id="saves-button">Save</button>
        <button type="button" onclick=handleReset() class="btn btn-info" id="save-reset">Reset</button>
    </form>
</div>
<script>
    function handleReset() {
        document.getElementById("fullName").value = "";
        document.getElementById("address").value = "";
        document.getElementById("phoneNumber").value = "";
    }
</script>
</body>
</html>
