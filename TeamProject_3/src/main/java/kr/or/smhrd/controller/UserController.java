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

import kr.or.smhrd.dao.SubscriptionDAO;
import kr.or.smhrd.dto.SubscriptionDTO;
import kr.or.smhrd.dto.UserDTO;
import kr.or.smhrd.service.SubscriptionService;
import kr.or.smhrd.service.UserService;

@Controller
@RequestMapping("/register")
public class UserController {
	@Autowired
	UserService service;

	@Autowired
	SubscriptionService s_service;
	
	@GetMapping("/mypage")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String) session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/mypage");
		
		return mav;
	}
	

	@GetMapping("/userEdit")
	public ModelAndView userEdit(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/userEdit");
		return mav;
	}
	

	@GetMapping("/userResign")
	public ModelAndView userResign(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
		mav.addObject("dto", dto);
		mav.setViewName("register/userResign");
		
		return mav;
	}
	

	@GetMapping("/login")
	public String login() {
		return "/register/login";
	}
	

	@GetMapping("/idSearch")
	public String idSearch() {
		return "/register/idSearch";
	}
	

	@GetMapping("/pwSearch")
	public String pwSearch() {
		return "/register/pwSearch";
	}
	

	@GetMapping("/signUp")
	public String signUp() {
		return "/register/signUp";
	}
		
	// �쉶�썝媛��엯
	@PostMapping("/UserInsert")
	public ModelAndView UserInsert(UserDTO dto, SubscriptionDTO sdto) {
		ModelAndView mav = new ModelAndView();
		
		try {			
			service.UserInsert(dto);
			s_service.UserInsert(sdto);

			mav.setViewName("redirect: login");
		}catch(Exception e) {
			System.out.println("error >> "+e);
			mav.setViewName("register/signupFail");
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
	
	//아이디찾기
	@PostMapping("/IdSearch")
	public ModelAndView IdSearch(String u_name, String u_email) {
		ModelAndView mav = new ModelAndView();
		UserDTO result = service.IdSearch(u_name, u_email);
		try {
			String name = result.getU_name();
			String id = result.getU_id();
			mav.addObject("u_id", id);
			mav.addObject("u_name", name);
			mav.setViewName("register/idShow");
	

		} catch (Exception e) {
			mav.addObject("errorMessage", "아이디가 없음");
			mav.setViewName("register/idSearchResult");
			e.printStackTrace();
		}
		return mav;
	}
	@PostMapping("/PwSearch")
	public ModelAndView PwSearch(String u_id, String u_email) {
		ModelAndView mav = new ModelAndView();
		UserDTO result = service.PwSearch(u_id, u_email);
		try {
			String id = result.getU_id();
			String pw = result.getU_pw();
			mav.addObject("u_id", id);
			mav.addObject("u_pw", pw);
			mav.setViewName("register/pwShow");

		} catch (Exception e) {
			
			mav.addObject("errorMessage", "비밀번호가 없음");
			mav.setViewName("register/idSearchResult");
			e.printStackTrace();
		}
		return mav;
	}


}