<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<link rel=stylesheet href=../inc/subScription.css>

<main>
	<div class="container">

	    <h1>${dto.u_id }님 구독 관리</h1>
	    <div class="card">
	        <div class="card-body">
	            <h5>${dto.u_id }</h5>
	
	            <div class="form-group">
	                <label for="startDate">구독 시작일:</label>
	                <input type="text" id="startDate" readonly value="${dto.sub_startdate }">
	            </div>
	
	            <div class="form-group">
	                <label for="expiryDate">구독 만료일: </label>
	                <input type="text" id="expiryDate" readonly value="${dto.sub_enddate }">
	            </div>
	
	            <button onclick="window.location.href='/smhrd/subscription/paymentdetail'">결제 내역 확인</button>
	        </div>
	    </div>

	</div>
</main>