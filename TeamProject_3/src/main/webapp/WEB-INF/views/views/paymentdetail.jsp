<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <style>
        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
        }
        .header {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .payment-card {
            padding: 16px;
            background-color: #f9effc;
            margin-bottom: 10px;
            border-radius: 5px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }
        .bold {
            font-weight: bold;
        }
        .separator {
            border-top: 1px solid #ccc;
            margin-top: 10px;
            margin-bottom: 10px;
        }
    </style>

<main>
<div class="container">
    <div class="header">결제 내역</div>

    <div class="payment-card">
        <div class="bold">[자동결제] 월 정기구독</div>
        <div>1개월 구독</div>
        <div class="separator"></div>
        <div>결제일: 2023-01-01</div>
        <div>금액: $10</div>
        <div class="separator"></div>
        <div class="bold">결제완료</div>
    </div>

    <div class="payment-card">
        <div class="bold">[자동결제] 월 정기구독</div>
        <div>1개월 구독</div>
        <div class="separator"></div>
        <div>결제일: 2023-02-01</div>
        <div>금액: $10</div>
        <div class="separator"></div>
        <div class="bold">결제완료</div>
    </div>

    <div class="payment-card">
        <div class="bold">[자동결제] 월 정기구독</div>
        <div>1개월 구독</div>
        <div class="separator"></div>
        <div>결제일: 2023-03-01</div>
        <div>금액: $10</div>
        <div class="separator"></div>
        <div class="bold">결제완료</div>
    </div>

</div>
</main>