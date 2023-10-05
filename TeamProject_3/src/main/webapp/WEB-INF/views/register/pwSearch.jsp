<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/pwSearch.css>
    
<main>
	<div class="find-password-wrapper">
	    <h2>비밀번호 찾기</h2>
	    <form method="post" action="/smhrd/register/PwSearch" id="find-password-form">
	        <input type="u_id" name="u_id" placeholder="아이디">
	        <input type="u_email" name="u_email" placeholder="이메일">
	        <input type="submit" value="비밀번호 찾기">
	    </form>
	</div>

</main>

