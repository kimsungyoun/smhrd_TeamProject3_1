<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
        body {
            font-family: Arial, sans-serif;
        }
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
	
	<c:forEach var="dto" items="${list}">
	    <div class="payment-card">
	        <div class="bold">[1개월 구독]</div>
	        <div>1개월 구독</div>
	        <div class="separator"></div>
	        <div>결제일: ${dto.p_date}</div>
	        <div>금액: ${dto.p_amount}</div>
	        <div class="separator"></div>
	        <div class="bold">결제완료</div>
	    </div>
    </c:forEach>

</main>