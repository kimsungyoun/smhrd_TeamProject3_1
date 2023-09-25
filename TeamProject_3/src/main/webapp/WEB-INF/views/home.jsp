<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- <style>
        .ranking-container {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            width: 70%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .ranking-header {
            text-align: center;
            margin-bottom: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #e1e1e1;
        }
        li:last-child {
            border-bottom: none;
        }
        img{
            width: 30px;
            height: 30px;
        }
    </style> -->


<main>
<div>
	<h2>게임 인기 순위</h2>
	<div class="ranking-container">
        <div class="ranking-header">
            <h2>게임 순위 TOP 10</h2>
        </div>
        
        <div>        
        <ul>
	       	<c:forEach var="dto" items="${game}">
	       		<li>
	       		<span>${dto.g_rank}등</span>
				<span>${dto.g_name}</span>
				<span>
					<a href="/smhrd/game/gameDetail?g_no=${dto.g_no}">
					<img src="<%= request.getContextPath() %>/img/chart.png" alt=""></a>
				</span>
	       	</c:forEach>
        </ul>
        </div>
            <!-- 
            <ul>
            <li><span>1. 게임 A</span><span><a href="/smhrd/views/views/chart.jsp"><img src="/img/chart.png" alt=""></a></span></li>
            <li><span>2. 게임 B</span><span>9.4/10</span></li>
            <li><span>3. 게임 C</span><span>9.3/10</span></li>
            <li><span>4. 게임 D</span><span>9.2/10</span></li>
            <li><span>5. 게임 E</span><span>9.1/10</span></li>
            <li><span>6. 게임 F</span><span>9.0/10</span></li>
            <li><span>7. 게임 G</span><span>8.9/10</span></li>
            <li><span>8. 게임 H</span><span>8.8/10</span></li>
            <li><span>9. 게임 I</span><span>8.7/10</span></li>
            <li><span>10. 게임 J</span><span>8.6/10</span></li>
        	</ul> -->
    </div>
	
</div>

<div>
	<h2>인기 뉴스</h2>
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
