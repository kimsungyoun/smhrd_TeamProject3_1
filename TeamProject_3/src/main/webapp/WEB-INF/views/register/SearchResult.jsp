<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
	var errorMessage = "${errorMessage}";
	if (errorMessage === "아이디가 없음") {
	    alert("입력하신 정보와 일치하는 아이디가 없습니다");
	} else if (errorMessage === "비밀번호가 없음") {
	    alert("입력하신 정보와 일치하는 비밀번호가 없습니다");
	}
	history.back();

	/*  
 	alert("입력하신 정보와 일치하는 아이디가 없습니다.");
	history.back(); 
	*/
</script>