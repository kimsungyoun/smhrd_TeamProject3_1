package kr.or.smhrd.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.smhrd.dto.KakaoDTO;
import kr.or.smhrd.repository.KakaoLoginRepository;
import kr.or.smhrd.service.KakaoLoginService;

@Controller
@RequestMapping(value="/KakaoLogin")
public class KakaoLoginController {
	@Autowired
	private KakaoLoginService ks;
	private KakaoLoginRepository kr;
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		String access_Token = ks.getAccessToken(code);
	    
		// userInfo의 타입을 KakaoDTO로 변경 및 import.
		KakaoDTO userInfo = ks.getKakaoInfoService(access_Token);
	    
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###kakaoId#### : " + userInfo.getK_id("kakaId"));
		System.out.println("###kakaoName#### : " + userInfo.getK_name("kakaoName"));
		return "register/login";
	}

}