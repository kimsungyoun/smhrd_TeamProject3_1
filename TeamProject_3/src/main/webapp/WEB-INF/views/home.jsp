<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="./inc/home.css">

<main>

<a href="/smhrd/chat/chatbot">GPT</a>  <!-- ####gpt매핍주소  -->

<div>
	<h2>게임 인기 순위</h2>
	<div class="ranking-container">
        <div>  
        <table>
        	<c:forEach var="dto" items="${game}">
        		<tr>
        			<td>${dto.g_rank}등</td>
        			<td>${dto.g_name} </td>
        			<td><img src="data:image/jpeg;base64, ${dto.g_img_base64}"></td>
        			<td><a href="/smhrd/game/gameDetail?g_no=${dto.g_no}"><img src="<%= request.getContextPath() %>/img/chart.png" style="width: 20px; height: 20px"></a></td>
        		</tr>
        	</c:forEach>
        </table>    
        </div>
    </div>

    <!-- "맨 위로" 버튼 -->
    <button class="custom-btn btn-13" onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
    <script>
        // 사용자가 스크롤을 20px 이상 내리면 "맨 위로" 버튼이 나타나게 함
        window.onscroll = function () {
            scrollFunction()
        };

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
