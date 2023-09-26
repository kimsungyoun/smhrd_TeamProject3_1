package kr.or.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	//마이페이지로 이동
	@GetMapping("/mypage")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String) session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/mypage");
		
		return mav;
	}
	
	//회원정보 수정폼으로 이동
	@GetMapping("/userEdit")
	public ModelAndView userEdit(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/userEdit");
		return mav;
	}
	
	//회원탈퇴 폼으로 이동
	@GetMapping("/userResign")
	public ModelAndView userResign(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/userResign");
		
		return mav;
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
<<<<<<< HEAD
	
	// 중복아이디 체크
	@PostMapping("/UserCheck")
	@ResponseBody
	public int UserCheck(@RequestParam("u_id") String u_id) {
		return service.UserCheck(u_id);
	}
	
=======
		
	// 회원가입
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
			mav.setViewName("redirect: /");
		}else {
			mav.setViewName("register/registerResult");
		}
		
		return mav;
	}
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
	// 로그인
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
	
	// 로그아웃
	@GetMapping("/logOut")
	public ModelAndView logOut(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
	// 회원정보 수정
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
	
	// 아이디 찾기
	
	// 비밀번호 찾기
	
	// 회원탈퇴
	@PostMapping("/UserDel")
	public ModelAndView UserDel(String u_id, String u_pw) {
		ModelAndView mav = new ModelAndView();
		int result = service.UserDel(u_id, u_pw);
		
		if(result > 0) {
			mav.setViewName("redirect: /");
		}else {
			mav.addObject("dto",u_id);
			mav.setViewName("redirect: mypage");
		}
		
		return mav;
	}
	
}
