package kr.or.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.UserDTO;
import kr.or.smhrd.service.UserService;

@Controller
@RequestMapping("/register")
public class UserController {
	@Autowired
	UserService service;
	
	
	//마이페이지로 이동
	@GetMapping("/mypage")
	String mypage() {
		return "/register/mypage";
	}
	
	//회원정보 수정폼으로 이동
	@GetMapping("/userEdit")
	String userEdit() {
		return "/register/userEdit";
	}
	
	//회원탈퇴 폼으로 이동
	@GetMapping("/userResign")
	String userWithdrawal() {
		return "/register/userResign";
	}
	
	//로그인 폼으로 이동
	@GetMapping("/login")
	String login() {
		return "/register/login";
	}
	
	//아이디 찾기 폼으로 이동
	@GetMapping("/idSearch")
	String idSearch() {
		return "/register/idSearch";
	}
	
	//패스워드 찾기 폼으로 이동
	@GetMapping("/pwSearch")
	String pwSearch() {
		return "/register/pwSearch";
	}
	
	//회원가입 폼으로 이동
	@GetMapping("/signUp")
	String signUp() {
		return "/register/signUp";
	}
		
	// 로그인 확인
	public ModelAndView loginOk(String mem_id, String mem_password, HttpSession session) {
		UserDTO dto = service.loginOk(mem_id, mem_password);
		
		ModelAndView mav = new ModelAndView();
		
		if(dto != null) {
			session.setAttribute("logId", dto.getMem_id());
			session.setAttribute("logType", dto.getMem_type());
			session.setAttribute("logStatus", "Y");
			
			 mav.setViewName("redirect:/");
		}else {
			mav.setViewName("register/loginResult");
		}
		return mav;
	}
}
