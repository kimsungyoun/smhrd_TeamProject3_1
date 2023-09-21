package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	//마이페이지
	@GetMapping("/mypage")
	String mypage() {
		return "/user/mypage";
	}
	
	//내 정보수정
	@GetMapping("/userEdit")
	String userEdit() {
		return "/user/userEdit";
	}
	
	//회원탈퇴
	@GetMapping("/userWithdrawal")
	String userWithdrawal() {
		return "/user/userWithdrawal";
	}
	
	//로그인
	@GetMapping("/login")
	String login() {
		return "/user/login";
	}
	
	//로그인
	@GetMapping("/idSearch")
	String idSearch() {
		return "/user/idSearch";
	}
	
	//로그인
	@GetMapping("/pwSearch")
	String pwSearch() {
		return "/user/pwSearch";
	}
	
	//로그인
	@GetMapping("/signUp")
	String signUp() {
		return "/user/signUp";
	}
		
		
}
