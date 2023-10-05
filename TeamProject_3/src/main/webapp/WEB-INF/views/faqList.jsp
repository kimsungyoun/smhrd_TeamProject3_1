<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel=stylesheet href=../inc/faqList.css>

    <script>
        // JavaScript 코드를 추가하여 질문을 클릭하면 답변을 펼치고 숨기는 기능을 구현합니다.
        document.addEventListener('DOMContentLoaded', function() {
            const faqQuestions = document.querySelectorAll('.faq-question');
            faqQuestions.forEach(function(question) {
                question.addEventListener('click', function() {
                    this.nextElementSibling.classList.toggle('active');
                });
            });
        });
    </script>

</head>
<body>

    <h1>FAQ</h1>
    <div class="container">
        <div class="faq-item">
            <div class="faq-question">
                Q: 가치(價値),함께란?
            </div>
            <div class="faq-answer">
                A: 세상 모든 경험의 시작, 가치(價値)함께는 취미와 챌린지 플랫폼입니다.<br><br>

                누구나 원하는 취미 여가를 쉽고 당연하게 즐길 수 있도록,
                
                호스트와 크루를 연결하고 등산, 윈드서핑, 클라이밍, 베이킹, 모임, 여행 등 
                
                세상을 더 경험할 수 있도록 도와주는 서비스 플랫폼입니다.<br><br>
                
                인터넷 홈페이지에서 이용 가능합니다.<br><br>
                
                * 인터넷 홈페이지: www.gachi.com<br><br>
                
                프립을 통해 지친 일상 속에서 활력을 찾고 일상을 바꾸는 경험을 하시기를 응원합니다.<br><br>
                
                <참고사항>
                - 플랫폼에 올라와 있는 프로그램들을 [가치(價値),함께] 이라고 칭하고 있습니다.<br><br>
                
                - 가치(價値),함께 진행하시는 분을 [호스트], 참여하시는 분을 [크루]라고 칭하고 있습니다.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 로그인 없이 진행 예정인 프립 보는 방법?
            </div>
            <div class="faq-answer">
                A: 현재, 오픈되어있는 프립은 웹페이지에서 누구나 쉽게 볼 수 있습니다.<br><br>

                - 가치(價値),함께 홈페이지 : www.gachi.com<br><br>
                
                ※ 로그인을 하지 않아도, 현재 오픈되어 있는 프립을 전부 확인 가능합니다.<br><br>
                
                ※ 가치(價値),함께 참가 신청을 원하시는 경우, 로그인 후 본인 인증을 해야 신청이 가능합니다. <br><br>
                
                ※ 앱에서는 회원가입을 하셔야 진행 가능한 가치(價値),함께를 확인할 수 있습니다.<br><br>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 프립에 회원가입 하는 방법?
            </div>
            <div class="faq-answer">
                A: PC 혹은 휴대폰 등을 통해, 가치(價値),함께 홈페이지에서 손쉽게 가입할 수 있으며 SNS를 통해서도 가입이 가능합니다.<br><br>

                ※ 1인 1계정으로 이용이 가능하며, 각 계정간 통합은 불가능합니다. <br><br>
                
                ※ 서비스 이용(신청 및 결제)을 위해서는 번호인증(1개의 계정)이 필수입니다.<br><br>
                
                ※ 본인인증은 휴대폰 명의자를 기준으로 1인 1개의 계정만 인증할 수 있습니다.<br><br>
                
                ※ SNS 계정으로 가입한 경우, 비밀번호 변경은 각 SNS 홈페이지에서 가능합니다.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 가치(價値),함께 신청 방법?
            </div>
            <div class="faq-answer">
                1. 가치(價値),함께 홈페이지에서 로그인 하기<br><br>

                2. 번호 인증하기<br><br>

                ※ 번호인증은 최초 1회만 진행되며, 번호 인증 후에 가치(價値),함께 신청이 가능합니다.<br><br>

                ※ 본인인증은 휴대폰 명의자를 기준으로 1인 1개의 계정만 인증할 수 있습니다.<br><br>

                3. 참가하길 원하는 선택 후 참가하기
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 프립은 누가 진행하나요?
            </div>
            <div class="faq-answer">
                호스트가 가치(價値),함께의 다양한 액티비티 프로그램을 진행합니다.<br><br>

                가치(價値),함께 호스트는 본인만이 가지고 있는 컨텐츠가 있다면 누구나 신청이 가능합니다.<br><br>

                <a href="">▶ 호스트 가입하러 가기</a>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 호스트가 무엇인가요?
            </div>
            <div class="faq-answer">
                다양한 분야에서 본인의 경험과 노하우가 있으며 이를 바탕으로 가치(價値)함께에서 특별한 일상을 선물하는 사람들을 호스트라고 합니다.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 호스트는 어떻게 신청하나요?
            </div>
            <div class="faq-answer">
                호스트 가입을 원하신다면 호스트 가입 페이지 <a href="">(링크 클릭)</a>로 접속한 후 <a href="">[5분만에 호스트 시작하기]</a> 버튼을 눌러주세요!
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 호스트에게 직접 질문도 할 수 있나요?
            </div>
            <div class="faq-answer">
                네, 가능합니다.<br><br>

                ▶ 참가 전<br><br>

                신청을 희망하시는 가치(價値),함께를 클릭 후, 하단에 있는 [1:1 문의] 게시판을 눌러 궁금하신 사항을 남겨주세요.<br><br>

                호스트님이 직접 상세한 답변을 달아 드립니다.<br><br>

                ▶ 참가 후<br><br>

                - 날짜 조율형 프립: 신청 완료 시 카카오톡으로 알림톡이 발송됩니다. <br><br>

                - 날짜 지정형 프립: 가치(價値),함께 진행 전일 오후 5시에 알림톡이 발송됩니다.<br><br>

                참가 신청 알림톡에서 호스트 연락처를 확인하여 문의하여 주시기 바랍니다. 
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 후기 및 피드는 어떻게 남기나요?
            </div>
            <div class="faq-answer">
                네, 가능합니다. <br> <br>

                ▶ 참가 전 <br> <br>

                신청을 희망하시는 가치(價値),함께를 클릭 후, 하단에 있는 [1:1 문의] 게시판을 눌러 궁금하신 사항을 남겨주세요. <br> <br>

                호스트님이 직접 상세한 답변을 달아 드립니다. <br><br>

                ▶ 참가 후 <br><br>

                - 날짜 조율형 프립: 신청 완료 시 카카오톡으로 알림톡이 발송됩니다. <br><br>

                - 날짜 지정형 프립: 가치(價値),함께 진행 전일 오후 5시에 알림톡이 발송됩니다.<br><br>

                참가 신청 알림톡에서 호스트 연락처를 확인하여 문의하여 주시기 바랍니다. 
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 프립 결제는 어떻게 하나요?
            </div>
            <div class="faq-answer">
                토스 페이, 신용/체크카드, 네이버 페이, 카카오 페이, 페이코, 휴대폰 결제, 실시간 계좌이체, 충전된 금액을 이용한 결제가 가능합니다. <br><br>

                ※ 베네피아 휴가샵 포인트는 프립 앱이 아닌 휴가샵 홈페이지를 통해 결제해 주시기 바랍니다.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 후기 수정/삭제는 어떻게 하나요?
            </div>
            <div class="faq-answer">
                웹의 [마이페이지] > [후기]에서 [후기 편집] 버튼을 눌러 내용을 수정/삭제 하실 수 있습니다. <br><br>

                ※ 삭제 이후 복구는 불가합니다.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                Q: 가치(價値)함께 인재채용은 어떻게 진행되나요?
            </div>
            <div class="faq-answer">
                안녕하세요 가치(價値),함께 팀입니다! ʕっ•ᴥ•ʔっ <br><br>

                We Inspire People to Experience the World. <br><br>

                우리는 모두가 세상을 더 경험할 수 있게, 삶을 더 즐길 수 있게 합니다. <br><br>

                가치(價値),함께는 여가 액티비티 플랫폼 '가치(價値),함께'을 통해 사람들이 평소에 쉽게 할 수 없었던 수많은 경험과 도전을 제공하고,

                새로운 사람들과 액티비티를 함께 즐기고 소통하는 공간을 만들어가고 있습니다. <br><br>

                가치(價値),함께과 함께 더 많은 사람이 세상을 경험하고 삶을 더 즐길 수 있도록, 

                새로운 여가 문화의 미래를 혁신하고자 하는 당신의 지원을 기다립니다!<br><br>

                채용 문의: gachi@google.com

                <a href="">[관련 사이트로 이동]</a>
            </div>
        </div>

        <!-- 추가적인 질문과 답변을 이곳에 작성해 주세요. -->
    </div>

</body>
</html>