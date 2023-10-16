<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel="stylesheet" href="/smhrd/inc/gameList.css">

<main>
<div>
	<h2>캐주얼 게임 순위</h2>
	<table>
	<thead>
		<tr>
			<th>순위</th>
			<th>제목</th>
			<th>개발사</th>
			<th>다운로드수</th>
			<th>평점</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="game" items="${list}">
			<tr> 
				<td>${game.g_rank}</td>
				<td>
					<a href="/smhrd/game/gameView?g_no=${game.g_no}
						<c:if test="${pDTO.nowPage!=null}">&nowPage=${pDTO.nowPage}
						<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if></c:if>">
						${game.g_name }
					</a>
				</td>
				<td>${game.g_company}</td>
				<td>${game.g_downloads}</td>
				<td>${game.g_star}</td>
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
				<li><a href='/smhrd/game/gameList?nowPage=${pDTO.nowPage-1 }<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>prev</a></li>
			</c:if>
			
			<!-- forEach : 변수, 시작, 끝, 증가값(생략가능) -->
			<c:forEach var="p" begin="${pDTO.startPageNum}" end="${pDTO.startPageNum + pDTO.onePageNumCount - 1}" step="1"> 
			    <c:if test="${p <= pDTO.totalPage}">
			        <!-- 선택한 페이지 번호 표시 -->
			        <c:if test="${p == pDTO.nowPage }">		
			            <li class="pgnum current-page">
			                <a href='/smhrd/game/gameList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a>
			            </li>
			        </c:if>
			        
			        <!-- 선택되지 않은 페이지 번호들 표시x -->
			        <c:if test="${p != pDTO.nowPage }">		
			            <li class="pgnum">
			                <a href='/smhrd/game/gameList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a>
			            </li>
			        </c:if>					
			    </c:if>
			</c:forEach>

			
			<c:if test="${pDTO.nowPage >= pDTO.totalPage }">
				<li>next</li>
			</c:if>
			<c:if test="${pDTO.nowPage < pDTO.totalPage }">
				<li><a href='/smhrd/game/gameList?nowPage=${pDTO.nowPage+1 }<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>next</a></li>
			</c:if>
		</ul>
	</div>

	<div class="search">
		<form action="/smhrd/game/gameList">
			<select name="searchKey">
				<option value="g_name">제목</option>
				<option value="g_info">글내용</option>
			</select>
			<input type="text" name="searchWord" id="searchWord" class="searchWord"/>
			<input type="submit" value="Search" class="searchBtn"/>
		</form>
	</div>
</main>
