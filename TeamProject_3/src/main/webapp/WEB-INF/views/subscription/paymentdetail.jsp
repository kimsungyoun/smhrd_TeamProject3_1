<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel=stylesheet href=../inc/payMentDetail.css>    

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
</div>
</main>