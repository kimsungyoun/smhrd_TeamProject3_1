<%--
  Created by IntelliJ IDEA.
  User: user07
  Date: 2023-09-19
  Time: 오후 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        label {
            display: block;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<h2>회원가입 폼</h2>
<form action="UserInsert" method="POST">
    <label for="username">아이디:</label>
    <input type="text" id="u_id" name="u_id" required>

    <label for="password">비밀번호:</label>
    <input type="password" id="u_pw" name="u_pw" required>

    <label for="confirm_password">비밀번호 확인:</label>
    <input type="password" id="confirm_password" name="confirm_password" required>

    <label for="email">이메일:</label>
    <input type="email" id="u_email" name="u_email" required>

    <label for="phone">휴대폰 번호:</label>
    <input type="tel" id="u_phone" name="phone" required>

    <label for="name">이름:</label>
    <input type="text" id="u_name" name="u_name" required>

    <label for="birthdate">생년월일:</label>
    <input type="text" id="u_birthdate" name="u_birthdate" placeholder="YYYY-MM-DD" required>

    <label>성별:</label>
    <input type="radio" id="male" name="u_gender" value="male">
    <label for="male">남성</label>
    <input type="radio" id="female" name="u_gender" value="female">
    <label for="female">여성</label>

    <button type="submit">가입하기</button>
</form>
</body>
</html>
