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
    <title>Find Password</title>
    <style>
        .find-password-wrapper {
            width: 400px;
            height: 300px;
            padding: 40px;
            box-sizing: border-box;
        }
        .find-password-wrapper > h2 {
            font-size: 24px;
            color: #6A24FE;
            margin-bottom: 20px;
        }
        #find-password-form > input {
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }
        #find-password-form > input::placeholder {
            color: #D2D2D2;
        }
        #find-password-form > input[type="submit"] {
            color: #fff;
            font-size: 16px;
            background-color: #6A24FE;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="find-password-wrapper">
    <h2>Find Password</h2>
    <form method="post" action="####" id="find-password-form">
        <input type="text" name="userid" placeholder="Userid">
        <input type="email" name="userEmail" placeholder="Email">
        <input type="submit" value="Find Password">
    </form>
</div>

</body>
</html>

