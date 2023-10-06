<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<<<<<<< HEAD
  <style>
<<<<<<< HEAD
    .container {
=======
    /* .container {
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
      max-width: 800px;
      margin: auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h1 {
      font-size: 24px;
      margin-bottom: 20px;
      text-align: center;
    }
    .board-list {
      list-style: none;
      padding: 0;
    }
    .board-list > li {
      margin: 10px 0;
      border-bottom: 1px solid #ccc;
      padding-bottom: 10px;
    }
    .board-list > li:last-child {
      border-bottom: none;
    }
    .board-list > li > strong {
      font-weight: bold;
    }
    .date-recommend {
      display: flex;
      justify-content: space-between;
    }
    .content {
      white-space: pre-line;
      margin-top: 10px;
    }
    .author-align {
      text-align: right;
<<<<<<< HEAD
    }
  </style>
=======
    } */
  </style>
  
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
=======

<link rel=stylesheet href=../inc/newsView.css>

>>>>>>> ac23047b4c26816ab7f3f4f18254a6dd25ba208b
<main>
	<div class="container">
	  <h1>뉴스 기사 상세 페이지</h1>
	  <ul class="board-list">
	    <li class="date-recommend">
<<<<<<< HEAD
	      <strong>작성일: <span>2023-09-20</span></strong>
	      <div><strong>추천수:</strong> <span>150</span></div>
	    </li>
	    <li>
	      <h2 style="text-align: center;">제목</h2>
	    </li>
	    <li class="author-align">
	      <strong>작성자:</strong> <span>작성자 이름</span>
	    </li>
	    <li>
	      <strong>글내용</strong><br/>
	      <div class="content">
	        <!-- 글 내용 -->
	      </div>
	    </li>
	  </ul>
=======
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
	  <button class="button">목록</button>
	  </a>
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
	</div>
</main>
