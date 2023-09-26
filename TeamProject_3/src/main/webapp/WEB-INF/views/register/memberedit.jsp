<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 

<head>
    <meta charset="UTF-8">
    <title>비번확인창</title>
    <style>
        .delete-account-wrapper {
            width: 500px;
            margin: auto;
            padding: 40px;
            box-sizing: border-box;
        }
        .delete-account-wrapper > h2 {
            font-size: 24px;
            color: #6A24FE;
            margin-bottom: 20px;
        }
        #delete-account-form > input[type="submit"] {
            color: #fff;
            font-size: 16px;
            background-color: #6A24FE;
            margin-top: 20px;
        }
    </style>
<main>
 
<div class="delete-account-wrapper">
    <h2>${username}님 회원 정보 수정</h2>
    <form method="post" action="ServerURL" id="delete-account-form" onsubmit="return validatePassword();">
        <input type="password" id="userPassword" name="userPassword" placeholder="비밀번호">
        <input type="submit" value="비밀번호 확인">
    </form>
</div>
</main>

<script>
function validatePassword() {
    var password = $('#userPassword').val();
    
    $.ajax({
        type: 'POST',
        url: 'passwordValidationURL',  // 'passwordValidationURL'은 비밀번호를 검증하는 서버의 URL입니다.
        data: {
            password: password
        },
        dataType: 'json',
        success: function(response) {
            if (response.isValid) {
                window.location.href = '/useredit.jsp';
            } else {
                alert('비밀번호가 잘못되었습니다.');
            }
        },
        error: function() {
            alert('서버와의 통신 중 오류가 발생했습니다.');
        }
    });
    
    return false;  // 폼 제출을 막습니다.
}

</script>

