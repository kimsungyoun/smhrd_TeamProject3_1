<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel=stylesheet href="../inc/payMent.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">
	// 카카오페이 구현 
	const IMP = window.IMP;
	IMP.init('imp00135086');

	function requestPay2() {
		IMP.request_pay({
			pg : "kakaopay",
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '제품명',
			amount : 75000,
			buyer_email : '구매자 이메일',
			buyer_name : '구매자 이름',
			buyer_tel : '구매자 번호',
			buyer_addr : '구매자 주소',
			buyer_postcode : '구매자 주소',
			m_redirect_url : '/smhrd/subscription/payment'
		}, function(rsp) {
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				alert(msg); // 결제가 성공하면 알림창을 띄움
				location.href = '/smhrd/subscription/subscription';
			} else {
				var msg = '결제에 실패하였습니다.';
				rsp.error_msg;

			}
		});
	}
</script>

<main>
<div class="payment-container">
	<div>
  		<span>구독 정기결제</span>
	</div>
	<div class="vertical-line"></div>
	<div class="payment-info">
		<span>10,900원</span>
		<!-- <button onclick="requestPay2()">결제하기</button> -->
		<button onclick="location.href='/smhrd/subscription/payCheck'">결제하기</button>
	</div>
</div>
</main>
