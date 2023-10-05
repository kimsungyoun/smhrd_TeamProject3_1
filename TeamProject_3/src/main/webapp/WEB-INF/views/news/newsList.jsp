<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel=stylesheet href=../inc/newsList.css>

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
		<c:forEach var="news" items="${list}">
			<tr> 
				<td>${news.n_no}</td>
				<td>
					<a href="/smhrd/news/newsView?n_no=${news.n_no}
						<c:if test="${pDTO.nowPage!=null}">&nowPage=${pDTO.nowPage}
						<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if></c:if>">
						${news.n_title }
					</a>
				</td>
				<td>${news.n_reporter }</td>
				<td>${news.n_writedate}</td>
				<td>${news.n_hit}</td>
			</tr>
		</c:forEach> 

	</tbody>
	</table>
</div>

	<div class="page">
		<ul>
			<!-- 가장 첫 페이지시 이전페이지 버튼 비활성화 -->	
			<c:if test="${pDTO.nowPage==1 }">
				<li>prev</li>			
			</c:if>
			<!-- 이전 페이지 -->
			<c:if test="${pDTO.nowPage > 1 }">
				<li><a href='/smhrd/news/newsList?nowPage=${pDTO.nowPage-1 }<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>prev</a></li>
			</c:if>
			
			<!-- forEach : 변수, 시작, 끝, 증가값(생략가능) -->
			<c:forEach var="p" begin="${pDTO.startPageNum}" end="${pDTO.startPageNum + pDTO.onePageNumCount - 1}" step="1"> 
				<c:if test="${p <= pDTO.totalPage}">
					<!-- 선택한 페이지 번호 표시 -->
					<c:if test="${p == pDTO.nowPage }">		
						<li class="pgnum">
							<a href='/smhrd/news/newsList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a>
						</li>
					</c:if>
					
					<!-- 선택되지 않은 페이지 번호들 표시x -->
					<c:if test="${p != pDTO.nowPage }">		
						<li><a href='/smhrd/news/newsList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a></li>
					</c:if>					
				</c:if>
			</c:forEach>
			
			<c:if test="${pDTO.nowPage >= pDTO.totalPage }">
				<li>next</li>
			</c:if>
			<c:if test="${pDTO.nowPage < pDTO.totalPage }">
				<li><a href='/smhrd/news/newsList?nowPage=${pDTO.nowPage+1 }<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>next</a></li>
			</c:if>
		</ul>
	</div>


	<div class="search">
		<form action="/smhrd/news/newsList">
			<select name="searchKey">
				<option value="n_title">제목</option>
				<option value="n_content">글내용</option>
				<option value="n_reporter">뉴스작성자</option>	
			</select>
			<input type="text" name="searchWord" id="searchWord" class="searchWord"/>
			<input type="submit" value="Search" class="searchBtn"/>
		</form>
	</div>
</main>
