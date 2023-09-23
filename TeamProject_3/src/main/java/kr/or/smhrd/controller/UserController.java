package kr.or.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String mypage() {
		return "/register/mypage";
	}
	
	//회원정보 수정폼으로 이동
	@GetMapping("/userEdit")
	public ModelAndView userEdit(String u_id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", u_id);
		mav.setViewName("register/userEdit");
		return mav;
	}
	
	//회원탈퇴 폼으로 이동
	@GetMapping("/userResign")
	public String userResign() {
		return "/register/userResign";
	}
	
	//로그인 폼으로 이동
	@GetMapping("/login")
	public String login() {
		return "/register/login";
	}
	
	//아이디 찾기 폼으로 이동
	@GetMapping("/idSearch")
	public String idSearch() {
		return "/register/idSearch";
	}
	
	//패스워드 찾기 폼으로 이동
	@GetMapping("/pwSearch")
	public String pwSearch() {
		return "/register/pwSearch";
	}
	
	//회원가입 폼으로 이동
	@GetMapping("/signUp")
	public String signUp() {
		return "/register/signUp";
	}
		
	// 로그인
	@PostMapping("/loginOk")
	public ModelAndView loginOk(String u_id, String u_pw, HttpSession session) {
		UserDTO dto = service.loginOk(u_id, u_pw);
		
		ModelAndView mav = new ModelAndView();
		
		if(dto != null) {
			session.setAttribute("logId", dto.getU_id());
			session.setAttribute("logStatus", "Y");
			
			 mav.setViewName("redirect:/");
		}else {
			mav.setViewName("register/loginResult");
		}
		return mav;
	}
}
