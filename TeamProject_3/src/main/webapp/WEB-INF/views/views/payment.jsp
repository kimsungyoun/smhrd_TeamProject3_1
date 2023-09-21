<%--
  Created by IntelliJ IDEA.
  User: user07
  Date: 2023-09-20
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Subscription Payment</title>
  <style>
    /* Container styling */
    .payment-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
      border: 1px solid #ccc;
      padding: 20px;
      width: 80%;
      margin: auto;
    }

    /* Payment info styling */
    .payment-info {
      display: flex;
      align-items: center;
    }
  </style>
</head>
<body>

<div class="payment-container">
  <div>
    <span>구독 정기결제</span>
  </div>
  <div class="vertical-line"></div>
  <div class="payment-info">
    <span>10,900원    </span>
    <button onclick="alert('결제가 완료되었습니다.')">결제하기</button>
  </div>
</div>

</body>
</html>
