<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/idSearch.css>

<main>
	<div class="find-username-wrapper">
	    <h2>아이디 찾기</h2>
<<<<<<< HEAD
	    <form method="post" action="/smhrd/register/IdSearch" id="find-username-form">
	        <input type="text" name="u_name" id = "u_name" placeholder="이름">
	        <input type="text" name="u_email" id = "u_email" placeholder="이메일">
=======
	    <form method="post" action="IdSearch" id="find-username-form">
	        <input type="text" name="username" placeholder="이름">
	        <input type="text" name="birth" placeholder="YYYY-MM-DD" required>
>>>>>>> 9060f71afff174ee88be413e153574e4b2f596a4
	        <input type="submit" value="아이디 찾기">
	    </form>
	</div>

</main>

