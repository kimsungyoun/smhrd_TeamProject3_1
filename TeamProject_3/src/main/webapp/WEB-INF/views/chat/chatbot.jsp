<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- <html xmlns:th="http://www.thymeleaf.org"> -->

<main>
    <h1>Chatbot</h1>
    <!-- javascript, ajax로 대답을 바로 밑에서 반환 -->
    <input type="text" name="userMessage" placeholder="Enter your message" required>
    <button type="button" onclick="askGPT()">보내기</button>
    <!--  controller를 통해 대답을 answer 뷰페이지로 이동해서 출력
    <form action="/smhrd/chat/chatOk" method="post">
	    <input type="text" name="userMessage" placeholder="Enter your message" required>
	    <button type="submit">보내기</button>
	</form>
	 -->
	<div id="response"></div>
</main>




<script>
    function askGPT() {
        const userMessage = document.querySelector("input[name='userMessage']").value;
        const responseDiv = document.getElementById("response");
        
     	// 로딩 중 메시지 표시
        responseDiv.innerHTML = "로딩 중...";
        
        // 플라스크 서버에 POST 요청을 보냅니다.
        fetch("http://127.0.0.1:5000/ask", {  // YOUR_FLASK_SERVER_ENDPOINT 부분을 실제 플라스크 서버 엔드포인트로 변경하세요.
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "message": userMessage
            })
        })
        .then(response => response.json()) 
        .then(data => {
            // 응답을 div#response에 출력합니다.
            document.getElementById("response").innerHTML = "GPT: " + data.response;
        })
        .catch(error => {
            console.error('Error:', error);
        });
    }
</script>