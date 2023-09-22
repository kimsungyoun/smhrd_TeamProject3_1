<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main>

<div>
	<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>뉴스제목</th>
			<th>뉴스작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="bestnews" items="${bestnews}">
			<tr> 
				<td>${bestnews.n_no}</td>
				<td><a href="/smhrd/news/newsView?n_no=${bestnews.n_no}">${bestnews.n_title }</a></td>
				<td>${bestnews.n_reporter }</td>
				<td>${bestnews.n_writedate}</td>
				<td>${bestnews.n_hit}</td>
			</tr>
		</c:forEach> 
	</tbody>
	</table>
</div>

</main>
