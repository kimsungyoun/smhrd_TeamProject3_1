<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/userEdit.css>

<main>
	<div class="edit-profile-wrapper">
	    <h2>${dto.u_name }님 회원정보 수정</h2>
	    <form method="post" action="/smhrd/register/UserEdit" id="edit-profile-form" enctype="multipart/form-data">
	        <div class="profile-img"></div>
	        <input type="hidden" name="u_id" value="${dto.u_id}">
	        <input type="file" id="profile-image-upload" name="profileImage" accept="image/*">
	        <input type="text" name="u_name" id="u_name" placeholder="Username" value="${dto.u_name }">
	        <input type="email" name="u_email" id="u_email" placeholder="Email" value="${dto.u_email }">
	        <input type="password" name="u_pw" id="u_pw" placeholder="Password" value="${dto.u_pw }">
	        <input type="text" name="u_phone" id="u_phone" placeholder="Phone Number" value="${dto.u_phone }">
	        
	        <input type="submit" value="수정하기">
	    </form>
	</div>

</main>


