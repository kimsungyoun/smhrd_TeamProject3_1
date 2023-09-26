<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<style>
<<<<<<< HEAD
main {
    display: flex; /* Flexbox를 사용하여 요소들을 가로로 나란히 정렬 */
    flex-direction: column; /* 요소들을 세로로 정렬 */
    align-items: center; /* 요소들을 가운데 정렬 */
}

.newsTable {
    margin-bottom: 10px; /* 요소들 사이의 간격 설정 */
}
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
} */

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

<main>
<div>
	<table>
	<thead>
		<tr>
<<<<<<< HEAD
			<td>번호</td>
			<td>제목</td>
			<td>기자</td>
			<td>조회수</td>
			<td>작성일</td>
		</tr>
	</thead>
	<tbody>
        <c:forEach var="dto" items="${list}"> 
		<tr>
                    <td>${dto.n_no }</td>
                    <td><a href="/smhrd/boards/boardsView/${dto.n_no }">${dto.n_title }</a></td>
                    <td>${dto.n_reporter }</td>
                    <td>${dto.hit }</td>		
                    <td>${dto.n_writedate }</td>
		</tr>
             
        </c:forEach>
=======
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
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
	</tbody>
	</table>
</div>

<<<<<<< HEAD
      



<div class="page">
      <ul>
         <!-- 가장 첫 페이지시 이전페이지 버튼 비활성화 -->   
         <c:if test="${pDTO.nowPage==1 }">
            <li>prev</li>         
         </c:if>
         <!-- 이전 페이지 -->
         <c:if test="${pDTO.nowPage>1 }">
            <li><a href='/smhrd/community/communityList?nowPage=${pDTO.nowPage-1 }<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>prev</a></li>
         </c:if>
         
         <!-- forEach : 변수, 시작, 끝, 증가값(생략가능) -->
         <c:forEach var="p" begin="${pDTO.startPageNum}" end="${pDTO.startPageNum + pDTO.onePageNumCount - 1}" step="1"> 
            <c:if test="${p <= pDTO.totalPage}">
               <!-- 선택한 페이지 번호 표시 -->
               <c:if test="${p == pDTO.nowPage }">      
                  <li style="background: #00468C; border-radius: 50%; width:25px; height:25px;">
                     <a style="color: white" href='/smhrd/community/communityList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a>
                  </li>
               </c:if>
               
               <!-- 선택되지 않은 페이지 번호들 표시x -->
               <c:if test="${p != pDTO.nowPage }">      
                  <li><a href='/smhrd/community/communityList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a></li>
               </c:if>               
            </c:if>
         </c:forEach>
         
         
         <c:if test="${pDTO.nowPage >= pDTO.totalPage }">
            <li>next</li>
         </c:if>
         <c:if test="${pDTO.nowPage < pDTO.totalPage }">
            <li><a href='/smhrd/?com_type=${pDTO.com_type}&nowPage=${pDTO.nowPage+1 }<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>next</a></li>
         </c:if>
      </ul>
   </div>
   <div class="search">
      <form action="/smhrd/community/communityList">
         <select name="searchKey">
            <option value="com_title">제목</option>
            <option value="com_content">글내용</option>
            <option value="mem_id">글쓴이</option>
         </select>
         <input type="text" name="searchWord" id="searchWord" class="searchWord"/>
         <input type="submit" value="Search" class="searchBtn"/>
      </form>
   </div>
</main>
=======
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
</main>
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
