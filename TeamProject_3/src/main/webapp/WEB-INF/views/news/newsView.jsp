<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel=stylesheet href=../inc/newsView.css>

<main>
	<div class="container">
	  <h1>뉴스 기사 상세 페이지</h1>
	  <ul class="board-list">
	    <li class="date-recommend">
	      <strong>작성일: <span>${dto.n_writedate }</span></strong>
	      <div><strong>조회수:</strong> <span>${dto.n_hit }</span></div>
	    </li>
	    <li>
	      <h2 style="text-align: center;">${dto.n_title }</h2>
	    </li>
	    <li class="author-align">
	      <strong>기사 작성자:</strong> <span>${dto.n_reporter }</span>
	    </li>
	    <li>
	      <strong>글내용</strong>
	      <br/>
	      <div class="content">
	        <!-- 글 내용 -->
	        <span>${dto.n_content}</span>
	      </div>
	    </li>
	  </ul>
	  <a href='/smhrd/news/newsList?nowPage=${pDTO.nowPage}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>
	  	<button class="custom-btn btn-13"><span>목록</span></button>
	  </a>
	</div>
</main>
