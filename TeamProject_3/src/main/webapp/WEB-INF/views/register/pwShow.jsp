<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script>
	<c:set var="visibleChars" value="${dto.u_pw}" />
    <c:set var="lastCharIndex" value="${fn:length(visibleChars) - 2}" />
	
    alert("${dto.u_id}님의 비밀번호는 ${fn:substring(visibleChars, 0, lastCharIndex)}**입니다.");
	
    location.href = "/smhrd/register/login";
</script>