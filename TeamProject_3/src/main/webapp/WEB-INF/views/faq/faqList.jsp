<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel="stylesheet" href="../inc/faq.css">
<main>
<div id="Accordion_wrap">
     <div class="que">
      <span>서비스 이용은 어떻게 할 수 있나요?</span>
       <div class="arrow-wrap">
       </div>
     </div>
     <div class="anw">
      <span>좌측 상단에 로그인 버튼을 이용하여 먼저 회원가입을 하신 후 필요하신 서비스를 이용하실 수 있습니다.</span>
     </div>
     
      <div class="que">
      <span>계정 관리는 어떻게 해야 하나요?</span>
     </div>
     <div class="anw">
      <span>로그인 후 좌측 상단의 마이페이지에서 프로필 사진과 닉네임, 이메일, 비밀번호, 전화번호 를 바꿔 이용하실 수 있습니다 .</span>
     </div>
     
      <div class="que">
      <span>한 번 결제 시 이용 기간은 얼마나 되나요?</span>
     </div>
     <div class="anw">
      <span>한 달 구독을 결제 시 30일 이용 가능합니다.</span>
     </div>
      
      <div class="que">
      <span>제 개인정보는 언제까지 보관되나요?</span>
     </div>
     <div class="anw">
      <span>회원 탈퇴 시 개인정보는 보관되지 않으며 즉시 삭제 됩니다 .</span>
     </div>
     
     <div class="que">
      <span>아이디를 까먹었어요.</span>
     </div>
     <div class="anw">
      <span>좌측 상단 로그인 페이지에 로그인 버튼 밑에 아이디 찾기를 이용하시면 이름과 이메일을 이용하여 본인의 아이디를 팝업창으로 확인하실 수 있습니다.</span>
     </div>
     
     <div class="que">
      <span>뉴스 게시판에선 어떤 걸 볼 수 있나요?</span>
     </div>
     <div class="anw">
      <span>주로 인벤에서 게임과 관련 된 뉴스들을 확인 하실 수 있습니다.</span>
     </div>
</div>
</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(".que").click(function() {
	   $(this).next(".anw").stop().slideToggle(300);
	  $(this).toggleClass('on').siblings().removeClass('on');
	  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});
</script>