<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<main>
<div class="container">
        <h1>게시판 글 목록</h1>
<div class="write-button">
    <a href="${pageContext.request.contextPath}/boards/boardsWrite">게시판 글쓰기</a>
    <div>총 레코드 수: ${pDTO.totalRecord}개</div>
</div>
        <ul class="board-list">
            <li>
                <span>번호</span>
                <span>제목</span>
                <span>글쓴이</span>
                <span>조회수</span>
                <span>등록일</span>
            </li>
            <c:forEach var="dto" items="${list}">
                <li>
                    <span>${dto.boardsNo }</span>
                    <span><a href="/home/boards/boardsView/${dto.boardsNo }">${dto.subject }</a></span>
                    <span>${dto.userId }</span>
                    <span>${dto.hit }</span>
                    <span>${dto.writedate }</span>
                </li>
            </c:forEach>
        </ul>

        <div class="page">
		      <ul>
         <!-- 이전 페이지 -->
         <!-- 현재페이지가 1이면 prev를 눌러도 페이지이동이 없도록, 2이상이면 prev를 누르면 이전페이지로 이동-->
         <c:if test="${pDTO.nowPage == 1}">
            <li>prev</li>
         </c:if>
         <c:if test="${pDTO.nowPage > 1}">
            <li><a href='/home/boards/boardsList?nowPage=${pDTO.nowPage-1}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>prev</a></li>
         </c:if>
         
         <!-- 페이지 번호 -->
         <!-- var:변수, begin:시작값, end:끝값, step:증감값 -->
         <c:forEach var="p" begin="${pDTO.startPageNum}" end="${pDTO.startPageNum+pDTO.onePageNumCount-1}" step="1">
            <c:if test="${p <= pDTO.totalPage}">
               <c:if test="${p == pDTO.nowPage}">
                  <li style="background:yellow"><a href='/home/boards/boardsList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a></li>
               </c:if>
               <c:if test="${p != pDTO.nowPage}">
                  <li><a href='/home/boards/boardsList?nowPage=${p}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>${p}</a></li>
               </c:if>
            </c:if>
         </c:forEach>

         <!-- 다음 페이지 -->
         <c:if test="${pDTO.nowPage >= pDTO.totalPage}">
            <li>next</li>
         </c:if>
         <c:if test="${pDTO.nowPage < pDTO.totalPage}">
            <li><a href='/home/boards/boardsList?nowPage=${pDTO.nowPage+1}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>next</a></li>
         </c:if>
      </ul>
   </div>
		
        </div>

        <div class="search">
            <form action="/home/boards/boardsList">
                <select name="searchKey" id="">
                    <option value="subject">제목</option>
                    <option value="content">글내용</option>
                    <option value="userid">글쓴이</option>
                </select>
                <input type="text" name="searchWord" id="searchWord" />
                <input type="submit" value="Search" />
            </form>
        </div>
   
</main>
    