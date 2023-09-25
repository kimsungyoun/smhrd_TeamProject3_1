<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
  <style>
    .delete-account-wrapper {
      width: 500px;
      margin: auto;
      padding: 40px;
      box-sizing: border-box;
    }
    .delete-account-wrapper > h2 {
      font-size: 24px;
      color: #CEBEE1;
      margin-bottom: 20px;
    }
    .warning-text {
      color: red;
      margin-bottom: 20px;
    }
    #delete-account-form > input[type="submit"] {
      color: #fff;
      font-size: 16px;
      background-color: #CEBEE1;
      margin-top: 20px;
    }
  </style>
<main>
	<div class="delete-account-wrapper">
	  <h2>회원탈퇴</h2>
	  <div class="warning-text">
	    주의: 회원탈퇴를 진행하면 모든 정보가 삭제됩니다.
	  </div>
	  <form method="post" action="UserDel" id="delete-account-form">
	    <input type="hidden" name="u_id" value="${dto.u_id}">
	    <input type="password" name="u_pw" placeholder="비밀번호입력">
	    <input type="submit" value="탈퇴하기">
	  </form>
	</div>

</main>