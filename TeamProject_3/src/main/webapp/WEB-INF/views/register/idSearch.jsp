<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/idSearch.css>

<main>
	<div class="find-username-wrapper">
	    <h2>아이디 찾기</h2>
	    <form method="post" action="ServerURL" id="find-username-form">
	        <input type="text" name="username" placeholder="이름">
	        <input type="text" name="birth" placeholder="생일">
	        <input type="submit" value="아이디 찾기">
	    </form>
	</div>

</main>

