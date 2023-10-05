<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel=stylesheet href=../inc/pwShow.css>
</head>
<body>    
	<c:set var="visibleChars" value="${u_pw}" />
	<c:set var="lastCharIndex" value="${fn:length(visibleChars) - 2}" />
</body>
    <script>
        var message = "${u_id}님의 비밀번호는 ${fn:substring(visibleChars, 0, lastCharIndex)}**입니다.";
        alert(message);
    </script>
</html>