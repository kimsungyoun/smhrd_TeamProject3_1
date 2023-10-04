<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
    /* Container */
    .container {
        width: 80%;
        margin: auto;
        padding: 20px;
    }
    /* Card */
    .card {
        border: 1px solid #ccc;
        padding: 20px;
        margin-top: 20px;
    }
    /* Card Body */
    .card-body {
        padding: 10px;
    }
    /* Form Group */
    .form-group {
        margin-bottom: 20px;
    }
    /* Buttons */
    button {
        padding: 10px 20px;
        margin-top: 10px;
    }
</style>

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
	                <label for="autoRenewal">자동결제: </label>
	                <input type="checkbox" id="autoRenewal">
	            </div>
	
	            <div class="form-group">
	                <label for="expiryDate">구독 만료일: </label>
	                <input type="text" id="expiryDate" readonly value="${dto.sub_enddate }">
	            </div>
	
	            <button onclick="window.location.href='/paymentdetail'">결제 내역 확인</button>
	        </div>
	    </div>
	</div>
</main>