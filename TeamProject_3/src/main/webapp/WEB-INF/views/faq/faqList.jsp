<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel="stylesheet" href="../inc/faq.css">

<div id="Accordion_wrap">
     <div class="que">
      <span>This is first question.</span>
       <div class="arrow-wrap">
         <span class="arrow-top">↑</span>
        <span class="arrow-bottom">↓</span>
       </div>
     </div>
     <div class="anw">
      <span>This is first answer.</span>
     </div>
      <div class="que">
      <span>This is second question.</span>
     </div>
     <div class="anw">
      <span>This is second answer.</span>
     </div>
      <div class="que">
      <span>This is third question.</span>
     </div>
     <div class="anw">
      <span>This is third answer.</span>
     </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(".que").click(function() {
	   $(this).next(".anw").stop().slideToggle(300);
	  $(this).toggleClass('on').siblings().removeClass('on');
	  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});
</script>