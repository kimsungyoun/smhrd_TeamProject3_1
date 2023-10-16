<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/smhrd/inc/payMent.css" type="text/css">
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<main>
  <div class="payment-container">
    <div>
      <span>구독 결제</span>
    </div>
    <span class="price">10,900원</span>
    <button class="custom-btn btn-13" onclick="requestPay()">결제하기</button>
  </div>
  
  <div class="info-container">
    <h2>안내사항</h2>
    
    <div class="info-box">
      <p><strong>환불 안내:</strong> 결제 후 일정 기간 내에 환불이 가능합니다. 자세한 환불 정책은 <a href="/refund-policy">여기</a>를 참조해주세요.</p>
    </div>
    
    <div class="info-box">
      <p><strong>구독 안내:</strong> 본 서비스는 월 정기 구독 서비스입니다. 자세한 내용은 <a href="/subscription-info">여기</a>를 확인하세요.</p>
    </div>
    
    <div class="info-box">
      <p><strong>가격 안내:</strong> 현재 1개월 이용권은 10,900원에 제공됩니다.</p>
    </div>
  </div>
</main>

<script>
  var IMP = window.IMP;
  IMP.init("imp06441630");
  
  function requestPay() {
    IMP.request_pay({
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "merchant_" + new Date().getTime(),
      name: "1개월 이용권 Test",
      amount: 10900,
      buyer_email: "mynilsh2002@naver.com",
      buyer_name: "이수현",
      buyer_tel: "010-3692-3792",
      buyer_addr: "서울 광진구 화양동",
      buyer_postcode: "05016"
    }, function (rsp) {
      if (rsp.success) {
        alert("결제에 성공하셨습니다.");
        location.href = '/smhrd/subscription/payCheck';
      } else {
        alert("결제에 실패했습니다. : " + rsp.error_msg);
      }
    });
  }
</script>
