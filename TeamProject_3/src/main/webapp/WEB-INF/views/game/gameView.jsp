<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel=stylesheet href=../inc/gameDetail.css>

<main>
<div>
   <h2>${dto.g_name }</h2>
   <div>
   <table border="1">
      <tr>
	      <th>종류</th>
	      <th>내용</th>
      </tr>
      
      <tr>
         <td>게임 이름</td>
         <td>${dto.g_name }</td>
      </tr>
            
      <tr>
         <td>평점</td>
         <td>${dto.g_star }</td>
      </tr> 
      
      <tr>
         <td>버전</td>
         <td>${dto.g_version }</td>
      </tr>
            
      <tr>
         <td>출시일</td>
         <td>${dto.g_released }</td>
      </tr>
      
      <tr>
         <td>게임 회사</td>
         <td>${dto.g_company }</td>
      </tr>
      
      <tr>
         <td>게임 소개</td>
         <td>${dto.g_info }</td>
      </tr>
   </table>
   </div>
   <div class="frame">
   <a href='/smhrd/game/gameList?nowPage=${pDTO.nowPage}<c:if test="${pDTO.searchWord!=null}">&searchKey=${pDTO.searchKey}&searchWord=${pDTO.searchWord}</c:if>'>
	   <button class="custom-btn btn-13"><span>목록</span></button>
   </a>
   </div>
</div>
</main>