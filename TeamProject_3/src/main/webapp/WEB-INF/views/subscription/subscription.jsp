<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/smhrd/inc/subScription.css">

<main>
	<div class="container">
		<div class="custom-card">
			<div class="custom-card-header">
				<h1 class="custom-title">${dto.u_id}님 구독 관리</h1>
			</div>
			<div class="custom-card-body">
				<div class="custom-info">
					<p class="custom-label">구독 시작일:</p>
					<p class="custom-value">${dto.sub_startdate}</p>
				</div>
				<div class="custom-info">
					<p class="custom-label">구독 만료일:</p>
					<p class="custom-value">${dto.sub_enddate}</p>
				</div>
			<button class="custom-btn" onclick="window.location.href='/smhrd/subscription/paymentdetail'">결제 내역 확인</button>
			</div>
		</div>
	</div>
</main>