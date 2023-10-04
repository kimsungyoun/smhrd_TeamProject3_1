package kr.or.smhrd.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



import kr.or.smhrd.dto.UserDTO;
import kr.or.smhrd.service.UserService;

@Controller
@RequestMapping("/register")
public class UserController {
	@Autowired
	UserService service;
	
	//留덉씠�럹�씠吏�濡� �씠�룞
	@GetMapping("/mypage")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String) session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/mypage");
		
		return mav;
	}
	
	//�쉶�썝�젙蹂� �닔�젙�뤌�쑝濡� �씠�룞
	@GetMapping("/userEdit")
	public ModelAndView userEdit(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/userEdit");
		return mav;
	}
	
	//�쉶�썝�깉�눜 �뤌�쑝濡� �씠�룞
	@GetMapping("/userResign")
	public ModelAndView userResign(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/userResign");
		
		return mav;
	}
	
	//濡쒓렇�씤 �뤌�쑝濡� �씠�룞
	@GetMapping("/login")
	public String login() {
		return "/register/login";
	}
	
	//�븘�씠�뵒 李얘린 �뤌�쑝濡� �씠�룞
	@GetMapping("/idSearch")
	public String idSearch() {
		return "/register/idSearch";
	}
	
	//�뙣�뒪�썙�뱶 李얘린 �뤌�쑝濡� �씠�룞
	@GetMapping("/pwSearch")
	public String pwSearch() {
		return "/register/pwSearch";
	}
	
	//�쉶�썝媛��엯 �뤌�쑝濡� �씠�룞
	@GetMapping("/signUp")
	public String signUp() {
		return "/register/signUp";
	}
		
	// �쉶�썝媛��엯
	@PostMapping("/UserInsert")
	public ModelAndView UserInsert(UserDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = 0;
		try {			
			result = service.UserInsert(dto);
		}catch(Exception e) {
			System.out.println("error >> "+e);
		}
		
		if(result > 0) {
			mav.setViewName("redirect: login");
		}else {
			mav.setViewName("register/registerResult");
		}
		
		return mav;
	}
	// 濡쒓렇�씤
	@PostMapping("/loginOk")
	public ModelAndView loginOk(String u_id, String u_pw, HttpSession session) {
		UserDTO dto = service.loginOk(u_id, u_pw);
		
		ModelAndView mav = new ModelAndView();
		
		if(dto != null) {
			session.setAttribute("logId", dto.getU_id());
			session.setAttribute("logName", dto.getU_name());
			session.setAttribute("logStatus", "Y");
			
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("register/loginResult");
		}
		return mav;
	}
	
	// 濡쒓렇�븘�썐
	@GetMapping("/logOut")
	public ModelAndView logOut(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
	@GetMapping("/memberedit")
	public String memberedit() {
		return "/register/memberedit";
	}
	
	// �쉶�썝�젙蹂� �닔�젙
	@PostMapping("/UserEdit")
	public ModelAndView UserEdit(UserDTO dto) {
		ModelAndView mav = new ModelAndView();
		try {
			int result = service.UserEdit(dto);
			
			mav.setViewName("redirect: mypage");
		}catch(Exception e){
			e.printStackTrace();
			mav.setViewName("register/UserEditResult");
		}		
		
		return mav;
	}
	
	// �븘�씠�뵒 李얘린
	
	// 鍮꾨�踰덊샇 李얘린
	
<<<<<<< HEAD
	// 회원탈퇴

=======
	// �쉶�썝�깉�눜
>>>>>>> 58ca6704af2406f6b6b823e433b45c2e46d2346e
	@PostMapping("/UserDel")
	public ModelAndView UserDel(String u_id, String u_pw, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int result = service.UserDel(u_id, u_pw);
		
		if(result > 0) {
			session.invalidate();
			mav.setViewName("redirect:/");
		}else {
			mav.addObject("dto",u_id);
			mav.setViewName("redirect: mypage");
		}
		
		return mav;
	}
	
<<<<<<< HEAD
	// 구독관리 
	 // 네이버로그인 
	
	
	
	  @RequestMapping("/NaverLogin") 
	 public String userLogin(Model model,HttpSession session) { 
		 System.out.println("userLogin"); 
		 String naverAuthUrl = naverloginbo.getAuthorizationUrl(session);
	  model.addAttribute("naverUrl", naverAuthUrl); 
	  return "user/userLogin"; 
	  }
	
	 // 소셜로그인 정보 DB에 있는지 없는지 
	 @GetMapping("/IsUser")
	 public String CheckUser(소셜로그인으로 들어온 유저정보) {
		 System.out.println("db에 소셜로그인 회원의 정보가 있는지"); 
	 }
	
=======
>>>>>>> 58ca6704af2406f6b6b823e433b45c2e46d2346e
	
}
