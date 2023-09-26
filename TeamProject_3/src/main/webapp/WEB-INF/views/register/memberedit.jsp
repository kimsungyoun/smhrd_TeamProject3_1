<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <h2>{아이디}님 회원 정보 수정</h2>
    <form method="post" action="ServerURL" id="delete-account-form" onsubmit="return validatePassword();">
        <input type="password" id="userPassword" name="userPassword" placeholder="비밀번호">
        <input type="submit" value="비밀번호 확인">
        <a href="/useredit">회원정보 수정 페이지가기</a>
    </form>
</div>
</main>

<script>
    function validatePassword() {
        var password = document.getElementById('userPassword').value;

        // 비밀번호 검증 로직을 여기에 추가하세요.
        // 예를 들어, 서버에 요청을 보내 비밀번호를 검증할 수 있습니다.
        // 이 예시에서는 단순히 비밀번호가 '1234'인 경우를 올바른 것으로 가정합니다.

        if (password === '1234') {
            window.location.href = '/useredit.jsp';
            return false; // 폼 제출을 막습니다.
        } else {
            alert('비밀번호가 잘못되었습니다.');
            return false; // 폼 제출을 막습니다.
        }
    }
</script>