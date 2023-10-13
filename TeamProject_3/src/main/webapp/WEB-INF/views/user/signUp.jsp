<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        label {
            display: block;
            margin-bottom: 5px;
        }
        
    </style>
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
	<h2>회원가입 폼</h2>
	<!-- <form action="/smhrd/register/UserInsert" method="POST"> -->
		
		<label for="u_photo">프로필 이미지:</label>
		<input type="file" name="u_photo" id="u_photo" onchange="convertImageToBase64(event);" />
        <input type="hidden" name="u_photo_base64" id="u_photo_base64_input" />
             
		
	    <label for="username">아이디:</label>
	    <input type="text" id="username" name="username" required>
	
	    <label for="password">비밀번호:</label>
	    <input type="password" id="password" name="password" required>
	
	    <label for="confirm_password">비밀번호 확인:</label>
	    <input type="password" id="confirm_password" name="confirm_password" required>
	
	    <label for="email">이메일:</label>
	    <input type="email" id="email" name="email" required>
	
	    <label for="phone">휴대폰 번호:</label>
	    <input type="tel" id="phone" name="phone" required>
	
	    <label for="name">이름:</label>
	    <input type="text" id="name" name="name" required>
	
	    <label for="birthdate">생년월일:</label>
	    <input type="text" id="birthdate" name="birthdate" placeholder="YYYY-MM-DD" required>
	
	    <label>성별:</label>
	    <input type="radio" id="male" name="gender" value="male">
	    <label for="male">남성</label>
	    <input type="radio" id="female" name="gender" value="female">
	    <label for="female">여성</label>
	
	    <button type="submit">가입하기</button>
	</form>
</main>