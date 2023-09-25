<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    <style>
        .edit-profile-wrapper {
            width: 400px;
            margin: auto;
            padding: 40px;
            box-sizing: border-box;
        }
        .edit-profile-wrapper > h2 {
            font-size: 24px;
            color: #CEBEE1;
            margin-bottom: 20px;
        }
        #edit-profile-form > input,
        #profile-image-upload {
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }
        #edit-profile-form > input::placeholder,
        #profile-image-upload::placeholder {
            color: #D2D2D2;
        }
        #edit-profile-form > input[type="submit"] {
            color: #fff;
            font-size: 16px;
            background-color: #CEBEE1;
            margin-top: 20px;
        }
        .profile-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: grey;
            margin-bottom: 10px;
        }
    </style>
<main>
	<div class="edit-profile-wrapper">
	    <h2>회원정보 수정</h2>
	    <form method="post" action="ServerURL" id="edit-profile-form" enctype="multipart/form-data">
	        <div class="profile-img"></div>
	        <input type="hidden" name="u_id" value="${dto.u_id}">
	        <input type="file" id="profile-image-upload" name="profileImage" accept="image/*">
	        <input type="text" name="userName" placeholder="Username">
	        <input type="email" name="userEmail" placeholder="Email">
	        <input type="password" name="userPassword" placeholder="Password">
	        <input type="text" name="userPhone" placeholder="Phone Number">
	        <input type="submit" value="수정하기">
	    </form>
	</div>

</main>


