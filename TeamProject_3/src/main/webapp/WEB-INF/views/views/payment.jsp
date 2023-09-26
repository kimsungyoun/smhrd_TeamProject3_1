<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<main>
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
</main>