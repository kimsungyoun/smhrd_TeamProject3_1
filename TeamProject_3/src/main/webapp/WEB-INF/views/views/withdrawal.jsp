<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <title>회원탈퇴</title>
  <style>
    .delete-account-wrapper {
      width: 500px;
      margin: auto;
      padding: 40px;
      box-sizing: border-box;
    }
    .delete-account-wrapper > h2 {
      font-size: 24px;
      color: #6A24FE;
      margin-bottom: 20px;
    }
    .warning-text {
      color: red;
      margin-bottom: 20px;
    }
    #delete-account-form > input[type="submit"] {
      color: #fff;
      font-size: 16px;
      background-color: #6A24FE;
      margin-top: 20px;
    }
  </style>
</head>
<body>

<div class="delete-account-wrapper">
  <h2>회원탈퇴</h2>
  <div class="warning-text">
    주의: 회원탈퇴를 진행하면 모든 정보가 삭제됩니다.
  </div>
  <form method="post" action="ServerURL" id="delete-account-form">
    <input type="password" name="userPassword" placeholder="비밀번호입력">
    <input type="submit" value="탈퇴하기" onclick="alert('정말 탈퇴하시겠습니까?')">
  </form>
</div>

</body>
