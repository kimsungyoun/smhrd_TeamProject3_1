package kr.or.smhrd.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class TosspaymentController {

    @PostMapping("/makePayment")
    @ResponseBody
    public ResponseEntity<String> makePayment(@RequestBody String requestBody) {
        // Toss Payment API 엔드포인트 URL
        String apiUrl = "https://pay.toss.im/api/v2/payments";

        // HTTP 요청 헤더 설정
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        // HTTP 요청 본문과 헤더를 포함한 HttpEntity 생성
        HttpEntity<String> requestEntity = new HttpEntity<>(requestBody, headers);

        // RestTemplate을 사용하여 POST 요청을 보내고 응답을 받습니다.
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> responseEntity = restTemplate.postForEntity(apiUrl, requestEntity, String.class);

        // Toss Payment API에서 반환한 응답을 그대로 클라이언트에게 반환합니다.
        return responseEntity;
    }
}
