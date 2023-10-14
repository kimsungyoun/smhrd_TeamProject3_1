<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<link rel=stylesheet href=../inc/userEdit.css>
<script src="https://cdn.ckeditor.com/ckeditor5/38.0.1/super-build/ckeditor.js"></script>
<script src="/home/inc/ckeditor.js"></script>

<script type="text/javascript">
   function convertImageToBase64(event) {
     const fileInput = event.target;
     const file = fileInput.files[0];
     const reader = new FileReader();

     reader.onload = function (event) {
       const base64 = event.target.result;
       document.getElementById("u_photo_base64_input").value = base64;
     };

     reader.readAsDataURL(file);
   }
</script>

<main>
   <div class="edit-profile-wrapper">
       <h2>${dto.u_name }님 회원정보 수정</h2>
       <form method="post" action="/smhrd/register/UserEdit" id="edit-profile-form">
	       <div class="profile-img">
		       <c:if test="${dto.u_photo_base64 ne '사진없음'}">
		       		<img src="data:image/jpeg;base64,${dto.u_photo_base64}" alt="Product Image" />
		       </c:if>
	       </div>
	       <input type="hidden" name="u_id" value="${dto.u_id}">
	       <input type="file" name="u_photo" id="u_photo" onchange="convertImageToBase64(event);" />
	       <input type="hidden" name="u_photo_base64" id="u_photo_base64_input" />
	       <input type="text" name="u_name" id="u_name" placeholder="Username" value="${dto.u_name }">
	       <input type="email" name="u_email" id="u_email" placeholder="Email" value="${dto.u_email }">
	       <input type="password" name="u_pw" id="u_pw" placeholder="Password" value="${dto.u_pw }">
	       <input type="text" name="u_phone" id="u_phone" placeholder="Phone Number" value="${dto.u_phone }">
	           
	       <input class="custom-btn btn-13" type="submit" value="수정하기">
       </form>
	   <a href="/smhrd/register/mypage"><input class="custom-btn btn-13" style="width:100%;" type="button" value="뒤로가기"></a>
   </div>

</main>

