<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel=stylesheet href=../inc/signUp.css>

<script type="text/javascript">
   function convertImageToBase64(event) {
     const fileInput = event.target;
     const file = fileInput.files[0];
     const reader = new FileReader();

     reader.onload = function (event) {
       const base64 = event.target.result;
       document.getElementById("u_photo_base64_input").value = base64;
     };

     reader.readAsDataURL(file);
   }
</script>

<main>
<div id="signUp-form">
	<h2>회원가입 폼</h2>
	
	<form action="UserInsert" method="POST">
	    <table>
	    	<tr>
				<td>프로필 이미지</td>
				<td><input type="file" name="u_photo" id="u_photo" onchange="convertImageToBase64(event);" /></td>
		        <td><input type="hidden" name="u_photo_base64" id="u_photo_base64_input" /></td>
	    	</tr>
	    	<tr>
	    		<td>아이디</td> 
	    		<td><input type="text" id="u_id" name="u_id" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>비밀번호</td>
	    		<td><input type="password" id="u_pw" name="u_pw" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>비밀번호확인</td>
	    		<td><input type="password" id="confirm_pw" name="confirm_pw" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>이메일</td>
	    		<td><input type="email" id="u_email" name="u_email" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>휴대폰 번호</td>
	    		<td><input type="tel" id="u_phone" name="u_phone" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>이름</td>
	    		<td><input type="text" id="u_name" name="u_name" placeholder="010-1234-5678" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>생년월일</td>
	    		<td><input type="text" id="u_birthdate" name="u_birthdate" placeholder="YYYY-MM-DD" required></td>
	    	</tr>
	    	
	    	<tr>
	    		<td>성별</td>
	    		<td>
		    		<input type="radio" id="male" name="u_gender" value="M"><span>남성</span>
		    		<input type="radio" id="female" name="u_gender" value="F"><span>여성</span>
	    		</td>
	    	</tr>
	    </table>
	    <!-- <label for="username">
	    아이디:
	    <input type="text" id="u_id" name="u_id" required>
	    </label>
	
	    <label for="password">
	    비밀번호:
	    <input type="password" id="u_pw" name="u_pw" required>
	    </label>
	
	    <label for="confirm_password">
	    비밀번호 확인:
	    <input type="password" id="confirm_pw" name="confirm_pw" required>
	    </label>
		
		
	    <label for="email">
	    이메일:
	    <input type="email" id="u_email" name="u_email" required>
	    </label>
	
	    <label for="phone">
	    휴대폰 번호:
	    <input type="tel" id="u_phone" name="u_phone" required>
	    </label>
	
	    <label for="name">
	    이름:
	    <input type="text" id="u_name" name="u_name" required>
	    </label>
	
	    <label for="birthdate">
	    생년월일:
	    <input type="text" id="u_birthdate" name="u_birthdate" placeholder="YYYY-MM-DD" required>
	    </label>
	
	    <label>성별</label>
	    
		<label>남성<input type="radio" id="male" name="u_gender" value="M"></label>
		<label>여성<input type="radio" id="female" name="u_gender" value="F"></label> -->
	    <button type="submit">가입하기</button>
	</form>
</div>
</main>
