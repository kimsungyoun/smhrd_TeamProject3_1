<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/userResign.css>

<main>
	<div class="delete-account-wrapper">
	  <h2>${dto.u_name}님 회원탈퇴를 진행하시겠습니까?</h2>
	  <div class="warning-text">
	    주의: 회원탈퇴를 진행하면 모든 정보가 삭제됩니다.
	  </div>
	  <form method="post" action="UserDel" id="delete-account-form">
	    <input type="hidden" name="u_id" value="${dto.u_id}">
	    <input type="password" name="u_pw" placeholder="비밀번호입력">
	    <input class="custom-btn btn-13" type="submit" value="탈퇴하기">
	  </form>
	</div>

</main>