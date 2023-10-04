<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<<<<<<< HEAD
<style>
<<<<<<< HEAD


table {
=======
/* table {
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 100%;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
}

th {
    text-align: left;
}

thead {
    font-weight: bold;
    color: #fff;
    background: #CEBEE1;
}

td, th {
    padding: 1em .5em;
    vertical-align: middle;
}

td {
    border-bottom: 1px solid rgba(0,0,0,.1);
    background: #fff;
}

a {
    color: #73685d;
<<<<<<< HEAD
}
=======
} */
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047

@media all and (max-width: 768px) {

    table, thead, tbody, th, td, tr {
        display: block;
    }

    th {
        text-align: right;
    }

    table {
        position: relative;
        padding-bottom: 0;
        border: none;
        box-shadow: 0 0 10px rgba(0,0,0,.2);
    }

    thead {
        float: left;
        white-space: nowrap;
    }

    tbody {
        overflow-x: auto;
        overflow-y: hidden;
        position: relative;
        white-space: nowrap;
    }

    tr {
        display: inline-block;
        vertical-align: top;
    }

    th {
        border-bottom: 1px solid #a39485;
    }

    td {
        border-bottom: 1px solid #e5e5e5;
    }


}
<<<<<<< HEAD
</style>

<main>
	<table>
	    <thead>
	    <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>조회수</th>
	    </tr>
	    </thead>
	    <tbody>
	    <tr>
	        <td>1</td>
	        <td><a href="/smhrd/news/newsView">리소스</a></td>
	        <td>작성자</td>
	        <td>01/13/1979</td>
	        <td>5,000</td>
	    </tr>
	    <tr>
	        <td>Johnny</td>
	        <td>Smith</td>
	        <td>(713) 584-9614</td>
	        <td>2</td>
	        <td>06/09/1971</td>
	    </tr>
	    <tr>
	        <td>Susan</td>
	        <td>Johnson</td>
	        <td>(713) 847-1124</td>
	        <td>3</td>
	        <td>08/25/1965</td>
	    </tr>
	    <tr>
	        <td>Tracy</td>
	        <td>Richardson</td>
	        <td>(713) 245-4821</td>
	        <td>4</td>
	        <td>03/13/1980</td>
	    </tr>
	    </tbody>
	</table>
=======

.page > ul {
	display: flex;
	flex-direction: row;
	padding:0px;
	margin: 10px 0 10px 0px;
}

.page li{
	padding:0px;
	margin-right: 10px;
}
</style>
=======

<link rel=stylesheet href=../inc/newsList.css>
>>>>>>> ac23047b4c26816ab7f3f4f18254a6dd25ba208b

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
						<li style="background: #00468C; border-radius: 50%; width:20px; height:20px;">
							<a style="color: white;margin-left:1px;" href='/smhrd/news/newsList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a>
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
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
</main>