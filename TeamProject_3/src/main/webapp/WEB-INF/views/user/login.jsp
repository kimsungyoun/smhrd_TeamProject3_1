<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<html xmlns:th="http://www.thymeleaf.org">
<style>
    .login-wrapper{
        width: 400px;
        height: 350px;
        padding: 40px;
        box-sizing: border-box;
    }

    .login-wrapper > h2{
        font-size: 24px;
        color: #CEBEE1;
        margin-bottom: 20px;
    }
    #login-form > input{
        width: 100%;
        height: 48px;
        padding: 0 10px;
        box-sizing: border-box;
        margin-bottom: 16px;
        border-radius: 6px;
        background-color: #F8F8F8;
    }
    #login-form > input::placeholder{
        color: #D2D2D2;
    }
    #login-form > input[type="submit"]{
        color: #fff;
        font-size: 16px;
        background-color: #CEBEE1;
        margin-top: 20px;
    }
    기존의 checkbox를 없애고 label를 이용하여  디자인 시안과 동일하게 변경시켜줍니다.

    #login-form > input[type="checkbox"]{
        display: none;
    }
    #login-form > label{
        color: #999999;
    }
    #login-form input[type="checkbox"] + label{
        cursor: pointer;
        padding-left: 26px;
        background-repeat: no-repeat;
        background-size: contain;
    }
    #login-form input[type="checkbox"]:checked + label{
        background-repeat: no-repeat;
        background-size: contain;
    }
</style>

<main>
	
	<div class="login-wrapper">
	    <h2>Login</h2>
	    <form method="post" action="서버의url" id="login-form">
	        <input type="text" name="userName" placeholder="Email">
	        <input type="password" name="userPassword" placeholder="Password">
	        <label for="remember-check">
	            <input type="checkbox" id="remember-check">아이디 저장하기
	        </label>
	        <div class="">
	            <a href="/smhrd/user/idSearch">아이디찾기</a>
	            <a href="/smhrd/user/pwSearch">비밀번호찾기</a>
	            <a href="/smhrd/user/signUp">회원가입</a>
	        </div>
	        <input type="submit" value="Login">
	    </form>
	</div>
	
	
	<ul>
	    <li onclick="kakaoLogin();">
	        <a href="javascript:void(0)">
	            <img src="../../../images/kakao_login.png" alt="카카오 로그인">
	        </a>
	    </li>
	    <li onclick="kakaoLogout();">
	        <a href="javascript:void(0)">
	            <span>카카오 로그아웃</span>
	        </a>
	    </li>

	</ul>
	<!-- 카카오 스크립트 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	    Kakao.init('6a20bba2a1975a5c919ed9036f3180cc'); //발급받은 키 중 javascript키를 사용해준다.
	    console.log(Kakao.isInitialized()); // sdk초기화여부판단
	    //카카오로그인
	    function kakaoLogin() {
	        Kakao.Auth.login({
	            success: function (response) {
	                Kakao.API.request({
	                    url: '/v2/user/me',
	                    success: function (response) {
	                        console.log(response)
	                    },
	                    fail: function (error) {
	                        console.log(error)
	                    },
	                })
	            },
	            fail: function (error) {
	                console.log(error)
	            },
	        })
	    }
	    //카카오로그아웃
	    function kakaoLogout() {
	        if (Kakao.Auth.getAccessToken()) {
	            Kakao.API.request({
	                url: '/v1/user/unlink',
	                success: function (response) {
	                    console.log(response)
	                },
	                fail: function (error) {
	                    console.log(error)
	                },
	            })
	            Kakao.Auth.setAccessToken(undefined)
	        }
	    }
	</script>

</main>