<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
>>>>>>> 58ca6704af2406f6b6b823e433b45c2e46d2346e

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<link rel=stylesheet href=../inc/subScription.css>

<main>
	<div class="container">
<<<<<<< HEAD
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
=======
		<h1>아이디님 구독 관리</h1>
		<div class="card">
			<div class="card-body">
				<h5>아이디</h5>

				<div class="form-group">
					<label for="expiryDate">구독 만료일:</label> <input type="text"
						id="expiryDate" readonly value="2023-12-31">
				</div>

				<div class="form-group">
					<label for="autoRenewal">자동결제: </label> <input type="checkbox"
						id="autoRenewal">
				</div>

				<div class="form-group">
					<label for="nextPayment">다음 결제일: </label> <input type="text"
						id="nextPayment" readonly value="2023-11-30">
				</div>

				<button onclick="window.location.href='/paymentdetail'">결제
					내역 확인</button>
			</div>
		</div>
>>>>>>> 58ca6704af2406f6b6b823e433b45c2e46d2346e
	</div>
</main>