<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel=stylesheet href=../inc/login.css>

<main>
<!-- 로그인 화면 내용 -->
   <div class="login-wrapper">
      <h2>Login</h2>
      
      <!-- 로그인 폼 내용 -->
      <form method="post" action="loginOk" id="login-form">
         <input type="text" name="u_id" id="u_id" placeholder="ID">
         <input type="password" name="u_pw" id="u_pw" placeholder="Password">
         <label for="remember-check">
            <input type="checkbox" id="remember-check">아이디 저장하기
         </label>
         <!-- 로그인 버튼에 custom-btn 클래스 추가 -->
         <input type="submit" value="로그인" class="custom-btn btn-13" id="login-button">
      </form>
      
      <!-- 아이디 찾기, 비밀번호 찾기, 회원가입 버튼 등 -->
      <div>
         <a href="/smhrd/register/idSearch"><button class="custom-btn id-search-button">아이디 찾기</button></a>
         <a href="/smhrd/register/pwSearch"><button class="custom-btn pw-search-button">비밀번호 찾기</button></a>
         <a href="/smhrd/register/signUp"><button class="custom-btn sign-up-button">회원가입</button></a>
      </div>
   
      <!-- 
      <div class="social-login">
         <div id="kakao_id_login">
            <a href="javascript:void(0)" onclick="kakaoLogin();"><img src="<%= request.getContextPath() %>/img/kakao_login.png" alt="카카오 로그인"></a>
            <a href="javascript:void(0)" onclick="kakaoLogout();"><button>카카오 로그아웃</button></a>
         </div>
         
         <div id="g_id_onload" data-client_id="509029365873-e1n6bo3edjb0h0brf50dl08hfpf2dj4s.apps.googleusercontent.com" data-login_uri="/index" data-auto_prompt="false"></div>
         <div class="g_id_signin" data-type="standard" data-size="large" data-theme="outline" data-text="sign_in_with" data-shape="rectangular" data-logo_alignment="left"></div> 
         
         <div id="naver_id_login"></div>
      </div>
       -->
   </div>
</main>

<script>
    function handleCredentialResponse(response) {
        console.log("Encoded JWT ID token: " + response.credential);
    }
    window.onload = function () {
        google.accounts.id.initialize({
            client_id: "509029365873-e1n6bo3edjb0h0brf50dl08hfpf2dj4s.apps.googleusercontent.com",
            callback: handleCredentialResponse
        });
        google.accounts.id.renderButton(
            document.getElementById("buttonDiv"),
            { theme: "outline", size: "large" }  // customization attributes
        );
        google.accounts.id.prompt(); // also display the One Tap dialog
    }
</script>

<!-- 카카오 스크립트 -->

<!-- <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js" 
integrity="sha384-mXVrIX2T/Kszp6Z0aEWaA8Nm7J6/ZeWXbL8UpGRjKwWe56Srd/iyNmWMBhcItAjH" 
crossorigin="anonymous"></script> -->
<!-- 

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    Kakao.init('a1031eff7350ba4a1d45de246645149a'); //발급받은 키 중 javascript키를 사용해준다.
    Kakao.isInitialized();
    console.log(Kakao.isInitialized()); // sdk초기화여부판단
    //카카오로그인
    function kakaoLogin() {
    Kakao.Auth.login({
        success: function (response) {
            // Kakao API 
            Kakao.API.request({ 
               url: '/v2/user/me',
                success: function (response) {
                    window.location.href = '/smhrd';
                      $.ajax({
                        // controller mapping
                          url: 'KakaoLoginOk', 
                          type: 'POST',
                          success: function (data) {
                              console.log(data); 
                              // redirection
                              window.location.href = '/smhrd';
                          },
                          error: function (error) {
                              console.log(error);
                          },
                      });
                },
                fail: function (error) {
                    console.log(error);
                },
            });
        },
        fail: function (error) {
            console.log(error);
        },
    });
}

    //카카오로그아웃
    function kakaoLogout() {
        if (Kakao.Auth.getAccessToken()) {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function (response) {
                    console.log(response)
                },
                fail: function (error) {
                    console.log(error)
                },
            })
            Kakao.Auth.setAccessToken(undefined)
        }
    }
</script> 
 -->

<%--구글 로그인 api--%>
<!-- <script src="https://accounts.google.com/gsi/client" async defer></script> -->

<%--네이버 로그인 api--%>
<!-- 
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
 -->


<!-- //네이버 로그인 버튼 노출 영역 -->
<!-- 
<script type="text/javascript">
    var naver_id_login = new naver_id_login("mF0_mZLB199s6Uv8BSyM", "http://localhost:8080/auth/naver/login/callback");
    var state = naver_id_login.getUniqState();
    naver_id_login.setButton("white", 2,40);
    naver_id_login.setDomain("/login");
    naver_id_login.setState(state);
    naver_id_login.setPopup();
    naver_id_login.init_naver_id_login();
</script>
 -->