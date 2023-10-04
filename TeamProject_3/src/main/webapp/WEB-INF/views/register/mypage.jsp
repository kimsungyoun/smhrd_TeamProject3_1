<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<link rel=stylesheet href=../inc/myPage.css>

<main>
	<div class="my-page-wrapper">
	    <div class="profile-section">
	        <div class="profile-img"></div>

	    </div>
	
	    <div class="info-section">
	        <span>${dto.u_name}님</span>
	        <span>구독여부:${sdto.sub_status}</span>
	        
	    </div>
	
	    <div class="info-section">
	        <a href="/smhrd/register/userEdit">
	        <button>내 정보수정</button>
	        </a>
	    </div>
	
	    <div class="info-section">
<<<<<<< HEAD
	        <a href="/smhrd/subscription/detail?u_id=${dto.u_id}" >
=======
	        <a href="/smhrd/register/memberedit">
>>>>>>> 58ca6704af2406f6b6b823e433b45c2e46d2346e
	       		<button>구독 관리</button>
	        </a>
	    </div>
	
	    <div class="info-section">
	        <a href="/smhrd/register/logOut">
	        	<button>로그아웃</button>
	        </a>
	    </div>
	
	    <div class="info-section">
	        <a href="/smhrd/register/userResign">
	        	<button>회원탈퇴</button>
	        </a>
	    </div>
	</div>
</main>


