<%--
  Created by IntelliJ IDEA.
  User: user07
  Date: 2023-09-20
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
    <style>
        .my-page-wrapper {
            width: 400px;
            margin: auto;
        }
        .profile-section {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: grey;
        }
        .profile-btn {
            margin-top: 10px;
        }
        .info-section {
            padding: 10px 0;
            border-bottom: 1px solid #ccc;
        }
        .info-section:last-child {
            border-bottom: none;
        }
        .info-section > span {
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="my-page-wrapper">
    <div class="profile-section">
        <div class="profile-img"></div>
        <button class="profile-btn">구독 여부</button>
    </div>

    <div class="info-section">
        <span>Re:Source </span>
    </div>

    <div class="info-section">
        <button><a href="/memberedit">내 정보수정</a></button>
    </div>

    <div class="info-section">
        <button>구독 관리</button>
    </div>

    <div class="info-section">
        <button>로그아웃</button>
    </div>

    <div class="info-section">
        <button><a href="/withdrawal">회원탈퇴</a></button>
    </div>
</div>

</body>
</html>

