package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class UserController {
	//����������
	@GetMapping("/mypage")
	String mypage() {
		return "/register/mypage";
	}
	
	//�� ��������
	@GetMapping("/userEdit")
	String userEdit() {
		return "/register/userEdit";
	}
	
	//ȸ��Ż��
	@GetMapping("/userResign")
	String userWithdrawal() {
		return "/register/userResign";
	}
	
	//�α���
	@GetMapping("/login")
	String login() {
		return "/register/login";
	}
	
	//�α���
	@GetMapping("/idSearch")
	String idSearch() {
		return "/register/idSearch";
	}
	
	//�α���
	@GetMapping("/pwSearch")
	String pwSearch() {
		return "/register/pwSearch";
	}
	
	//�α���
	@GetMapping("/signUp")
	String signUp() {
		return "/register/signUp";
	}
		
		
}
