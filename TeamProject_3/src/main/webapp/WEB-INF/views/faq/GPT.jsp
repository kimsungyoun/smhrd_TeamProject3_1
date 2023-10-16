<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main>
<html xmlns:th="http://www.thymeleaf.org">

    <h1>Chatbot</h1>

    <form action="/chat" method="post">
        <input type="text" name="userMessage" placeholder="Enter your message" required>
        <button type="submit">Send</button>
    </form>

    <div th:each="message : ${messages}">
        <div th:if="${message.role == 'user'}">
            <strong>User:</strong> <span th:text="${message.content}"></span>
        </div>
        <div th:if="${message.role == 'assistant'}">
            <strong>Assistant:</strong> <span th:text="${message.content}"></span>
        </div>
    </div>

</main>
