<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/pwSearch.css>
    
<main>
	<div class="find-password-wrapper">
	    <h2>비밀번호 찾기</h2>
	    <form method="post" action="/smhrd/register/PwSearch" id="find-password-form">
	        <input type="text" name="u_id" placeholder="아이디">
	        <input type="email" name="u_email" placeholder="이메일">
	        <input type="submit" value="비밀번호 찾기" class="custom-btn btn-13">
		    <a href="/smhrd/register/login"><input class="custom-btn btn-13" style="width:100%;" type="button" value="뒤로가기"></a>
	    </form>
	</div>

</main>

