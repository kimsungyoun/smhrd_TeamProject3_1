<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<link rel=stylesheet href="/smhrd/inc/myPage.css">


<main>
	<div class="my-page-wrapper">
	    <div class="profile-section">
	        <div class="profile-img">
	        	<c:if test="${dto.u_photo_base64 ne '사진없음'}">
	        		<img src="data:image/jpeg;base64,${dto.u_photo_base64}" alt="Product Image" />
	        	</c:if>
	        </div>
	    </div>
	
		<!-- 구독표시 -->
	    <div class="info-section">
	        <p>${dto.u_name}님</p><p>구독여부 : ${sdto.sub_status}</p>
	    </div>
		<c:if test="${sdto.sub_status=='N'}">
		    <div class="info-section">
		        <a href="/smhrd/subscription/payment/?u_id=${dto.u_id}" ><button class="custom-btn btn-13">결제 하기</button></a>
		    </div>
		</c:if>	
		<c:if test="${sdto.sub_status=='Y'}">
		    <div class="info-section">
		        <a href="/smhrd/subscription/detail?u_id=${dto.u_id}" ><button class="custom-btn btn-13">구독 관리</button></a>
		    </div>
		</c:if>
		
		<!-- 내정보수정 -->
	    <div class="info-section">
	        <a href="/smhrd/register/userEdit"><button class="custom-btn btn-13">내 정보수정</button></a>
	    </div>

		<!-- 회원탈퇴 -->	
	    <div class="info-section">
	        <a href="/smhrd/register/userResign"><button class="custom-btn btn-13">회원탈퇴</button></a>
	    </div>
	</div>
</main>


