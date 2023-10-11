<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel=stylesheet href="/smhrd/inc/payMent.css" type="text/css">

<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<main>
<div class="payment-container">
  <div>
    <span>구독 결제</span>
  </div>
    <span> 10,900원 </span>

    <button onclick="requestPay()">결제하기</button>

</div>
</main>

<script>
    var IMP = window.IMP;
    IMP.init("imp06441630");
    
    function requestPay() {
//        IMP.request_pay(param, callback) // 결제창 호출
        	IMP.request_pay({ // param
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
            
        }, function (rsp) { // callback
            if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
				
            	/* uid = rsp.imp_uid;
        
                // 결제검증
                $.ajax({
                	headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                    url: '/subscription/payment',
                    method: "POST",
                    dataType : "JSON",
                }).done(function(data) {
                	if(data.result.code!=200){
                        //결제실패(웹서버측 실패)   
                        // 환불 코드(아직 구현 안함)  */
                        alert("결제에 성공하셨습니다.");  
                        location.href = '/smhrd/subscription/payCheck';
                       /*  removePayAuth(pay_auth_id);// pay_auth 값 지우기 */
                    }else{
                        //결제성공(웹서버측 성공)
                        alert("결제에 실패했습니다." + rsp.error_msg);
                    }
              /* },
                error: function(data) {
                    console.log("error" +data);
                }
            });
        } else {
            removePayAuth(pay_auth_id); // pay_auth 값 지우기
            alert("결제에 실패했습니다. : " +  rsp.error_msg); 
 */
    });
}
</script>

<script>
  	src="https://code.jquery.com/jquery-3.3.1.min.js"
  	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  	crossorigin="anonymous">
</script>
