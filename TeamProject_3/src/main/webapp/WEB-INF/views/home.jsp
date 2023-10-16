<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="/smhrd/inc/home.css">

<main>
<<<<<<< HEAD
<div>
	<h2>게임 인기 순위</h2>
	<!-- <div class="ranking-container"> -->
        <div class="table-container">  
	        <table class="rank-table">
	        	<c:forEach var="dto" items="${game}">
	        		<tr>
	        			<td>${dto.g_rank}등</td>
	        			<td>${dto.g_name} </td>
	        			<td><img src="data:image/jpeg;base64, ${dto.g_img_base64}"></td>
	        			<td><a href="/smhrd/game/gameDetail?g_no=${dto.g_no}"><img src="<%= request.getContextPath() %>/img/chart.png" style="width: 20px; height: 20px"></a></td>
	        		</tr>
	        	</c:forEach>
	        </table>    
	        <table class="news-table">
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
    <!-- </div> -->
</div>

<div>
	<h2>인기 뉴스</h2>
	
</div>
<!-- "맨 위로" 버튼 -->
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<script>
//사용자가 스크롤을 20px 이상 내리면 "맨 위로" 버튼이 나타나게 함
window.onscroll = function() {scrollFunction()};
=======
    <div class="ranking-container">
        <div class="rankings-news">
            <div class="rankings">
                <h2>게임 인기 순위</h2>
                <table>
                    <thead>
                        <tr>
                            <th>게임 순위</th>
                            <th>게임 이름</th>
                            <th>게임 이미지</th>
                            <th>게임 상세 정보</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dto" items="${game}">
                            <tr>
                                <td>${dto.g_rank}등</td>
                                <td>${dto.g_name} </td>
                                <td><img src="data:image/jpeg;base64, ${dto.g_img_base64}" alt="${dto.g_name}"></td>
                                <td><a href="/smhrd/game/gameDetail?g_no=${dto.g_no}"><img src="<%= request.getContextPath() %>/img/chart.png" style="width: 20px; height: 20px"></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="spacer"></div> <!-- 공백 추가 -->
            <div class="news">
                <h2>인기 뉴스</h2>
                <table>
                    <thead>
                        <tr>
                            <th>뉴스 번호</th>
                            <th>뉴스 제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="bestnews" items="${bestnews}">
                            <tr>
                                <td>${bestnews.n_no}</td>
                                <td><a href="/smhrd/news/newsView?n_no=${bestnews.n_no}">${bestnews.n_title }</a></td>
                                <td>${bestnews.n_writedate}</td>
                                <td>${bestnews.n_hit}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- "맨 위로" 버튼 -->
    <button class="custom-btn btn-13" onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
    <script>
        // 사용자가 스크롤을 20px 이상 내리면 "맨 위로" 버튼이 나타나게 함
        window.onscroll = function () {
            scrollFunction()
        };
>>>>>>> 8ffd112a060ecaeddd66f893d9c7892a9a6d3b00

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("myBtn").style.display = "block";
            } else {
                document.getElementById("myBtn").style.display = "none";
            }
        }

        // 사용자가 버튼을 클릭하면 맨 위로 스크롤
        function topFunction() {
            document.body.scrollTop = 0; // Safari 브라우저를 위한 스크롤
            document.documentElement.scrollTop = 0; // 다른 브라우저를 위한 스크롤
        }
    </script>
</main>