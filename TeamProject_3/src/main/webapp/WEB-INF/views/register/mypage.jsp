<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<link rel=stylesheet href=../inc/myPage.css>

<main>
	<div class="my-page-wrapper">
	    <div class="profile-section">
	        <div class="profile-img"></div>
	        <a href="">
	        	<button class="profile-btn">구독 여부</button>
	        </a>
	    </div>
	
	    <div class="info-section">
	        <span>${dto.u_name} 님 </span>
	    </div>
	
	    <div class="info-section">
	        <a href="/smhrd/register/userEdit">
	        <button>내 정보수정</button>
	        </a>
	    </div>
	
	    <div class="info-section">
	        <a href="/smhrd/register/memberedit">
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


