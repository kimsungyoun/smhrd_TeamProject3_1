<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main>

<div>
	<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<%-- 
		<c:forEach var="news" items="${news}">
			<tr> 
				<td>${news.n_no}</td>
				<td><a href="/smhrd/news/newsView/${new.n_no}">${news.n_title }</a></td>
				<td>${news.n_reporter }</td>
				<td>${news.n_writedate}</td>
				<td>${news.n_hit}</td>
			</tr>
		</c:forEach> 
		--%>
	</tbody>
	</table>
</div>

</main>
