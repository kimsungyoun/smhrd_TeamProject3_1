<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<style>
table {
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
}

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
</style>

<main>
<div class="newsTable">
        <h1>뉴스 글 목록</h1>
    	<a href=#>뉴스 새로고침</a>
    	총 레코드 수: ${pDTO.totalRecord}개
</div>
<div>
	<table>
	    <thead>
	    <tr>
	        <th>번호</th>  
	        <th>제목</th>  
	        <th>내용</th>		
	        <th>작성자</th>	
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
	    <c:forEach var="dto" items="${list}">
            <td>
                <span>${dto.boardsNo }</span>
                <span><a href="/home/boards/boardsView/${dto.boardsNo }">${dto.subject }</a></span>
                <span>${dto.userId }</span>
                <span>${dto.hit }</span>
                <span>${dto.writedate }</span>
            </td>
         </c:forEach>
	    </tbody>
	</table>
</div>
</main>
