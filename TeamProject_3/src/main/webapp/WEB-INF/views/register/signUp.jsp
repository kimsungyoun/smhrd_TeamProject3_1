<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        label {
            display: block;
            margin-bottom: 5px;
        }
        
    </style>
    
<main>
	<h2>회원가입 폼</h2>
	<form action="UserInsert" method="POST">
	    <label for="username">아이디:</label>
		<input type="text" id="u_id" name="u_id" required>
		<button type="button" id="checkId">중복 검사</button>
		<p id="idCheckResult"></p>
	
		<label for="password">비밀번호:</label>
		<input type="password" id="u_pw" name="u_pw" onkeyup="isSame()" required>
		
		<label for="confirm_password">비밀번호 확인:</label>
		<input type="password" id="confirm_password" name="confirm_password" onkeyup="isSame()" required>
		
		<p id="same"></p>
	
	    <label for="email">이메일:</label>
	    <input type="email" id="u_email" name="u_email" required>
	
	    <label for="phone">휴대폰 번호:</label>
	    <input type="tel" id="u_phone" name="u_phone" required>
	
	    <label for="name">이름:</label>
	    <input type="text" id="u_name" name="u_name" required>
	
	    <label for="birthdate">생년월일:</label>
	    <input type="text" id="u_birthdate" name="u_birthdate" placeholder="YYYY-MM-DD" required>
	
	    <label>성별:</label>
	    <input type="radio" id="male" name="u_gender" value="M">
	    <label for="male">남성</label>
	    <input type="radio" id="female" name="u_gender" value="F">
	    <label for="female">여성</label>
	
	    <button type="submit">가입하기</button>
	</form>

</main>

<script src="https://code.jquery.com/jquery-3.6.0.min.js">
$(document).ready(function() {
    <!-- 아이디 중복 체크 -->
    $("#checkId").click(function() {
        var userId = $("#u_id").val();

        $.ajax({
            type: 'POST',
            url: 'CheckUserId',
            data: { 'u_id': userId },
            success: function(data) {
                if (data.exists) {
                    $("#idCheckResult").text("이미 사용 중인 아이디입니다.").css("color", "red");
                } else {
                    $("#idCheckResult").text("사용 가능한 아이디입니다.").css("color", "green");
                }
            },
            error: function() {
                alert("서버 에러");
            }
        });
    });
</script>
<script>

<!-- 비밀번호 확인 체크 -->
function isSame() {
    var pw = document.getElementById('u_pw').value;
    var confirmPW = document.getElementById('confirm_password').value;

    if (pw && confirmPW) { // 두 입력란이 모두 값이 있는 경우에만 체크
        if (pw === confirmPW) {
            document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
            document.getElementById('same').style.color = 'blue';
        } else {
            document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
            document.getElementById('same').style.color = 'red';
        }
    }
}
</script>