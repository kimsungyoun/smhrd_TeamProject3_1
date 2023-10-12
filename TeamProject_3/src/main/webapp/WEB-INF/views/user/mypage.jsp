<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
	<style>
        .my-page-wrapper {
            width: 400px;
            margin: auto;
        }
        .profile-section {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: grey;
        }
        .profile-btn {
            margin-top: 10px;
        }
        .info-section {
            padding: 10px 0;
            border-bottom: 1px solid #ccc;
        }
        .info-section:last-child {
            border-bottom: none;
        }
        .info-section > span {
            font-weight: bold;
        }
    </style>

<main>
	<div class="my-page-wrapper">
	    <div class="profile-section">
	        <div class="profile-img"></div>
	        <button class="profile-btn">구독 여부</button>
	    </div>
	
	    <div class="info-section">
	        <span>Re:Source </span>
	    </div>
	
	    <div class="info-section">
	        <button><a href="/smhrd/user/userEdit">내 정보수정</a></button>
	    </div>
	
	    <div class="info-section">
	        <button>구독 관리</button>
	    </div>
	
	    <div class="info-section">
	        <button>로그아웃</button>
	    </div>
	
	    <div class="info-section">
	        <button><a href="/smhrd/user/userWithdrawal">회원탈퇴</a></button>
	    </div>
	</div>
</main>


