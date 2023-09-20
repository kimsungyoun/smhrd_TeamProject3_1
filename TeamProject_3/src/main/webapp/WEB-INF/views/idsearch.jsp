<%--
  Created by IntelliJ IDEA.
  User: user07
  Date: 2023-09-20
  Time: 오전 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Find Username</title>
    <style>
        .find-username-wrapper {
            width: 400px;
            height: 300px;
            padding: 40px;
            box-sizing: border-box;
        }
        .find-username-wrapper > h2 {
            font-size: 24px;
            color: #6A24FE;
            margin-bottom: 20px;
        }
        #find-username-form > input {
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }
        #find-username-form > input::placeholder {
            color: #D2D2D2;
        }
        #find-username-form > input[type="submit"] {
            color: #fff;
            font-size: 16px;
            background-color: #6A24FE;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="find-username-wrapper">
    <h2>Find Username</h2>
    <form method="post" action="ServerURL" id="find-username-form">
        <input type="text" name="username" placeholder="username">
        <input type="text" name="birth" placeholder="birthday">
        <input type="submit" value="Find Username">
    </form>
</div>

</body>
</html>

