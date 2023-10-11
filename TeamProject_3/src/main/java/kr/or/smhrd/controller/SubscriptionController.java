package kr.or.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.service.SubscriptionService;
import kr.or.smhrd.service.UserService;

@RestController
@RequestMapping("/subscription")
public class SubscriptionController {

	@Autowired
	SubscriptionService service;
	@Autowired
	UserService u_service;

	
	@GetMapping("/detail")
	public ModelAndView getView(String u_id) {
		ModelAndView mav = new ModelAndView();
		
	    mav.addObject("dto", service.getView(u_id));
	    mav.addObject("udto", u_service.UserSelect(u_id));
	    
	    mav.setViewName("subscription/subscription");
	    
	    return mav;
	}
	
	// 결제 정보 페이지 - 민지
	@GetMapping("/payment")
	public ModelAndView payment() {  //String u_id
		ModelAndView mav = new ModelAndView();
	    //mav.addObject("dto", service.getView(u_id));      
	    mav.setViewName("subscription/payment");
	    
	    return mav;
	}
	
		// 구독 정보 등록 
	   	// 구독 결제 완료 시, 구독 정보 DB에 등록 -> 등록 성공하면 마이페이지로 이동, 실패하면 다시 결제정보 페이지
	   	@GetMapping("/payCheck")
	   	public ModelAndView payCheck(HttpSession session) {
	   		ModelAndView mav = new ModelAndView();
	   		int result = service.subUpdate((String)session.getAttribute("logId"));
	   		service.payInsert((String)session.getAttribute("logId"));
	   		if (result > 0) {
	   			mav.setViewName("redirect:/register/mypage");
	   		} else {
	   			mav.setViewName("subscription/payment");
	   		}
	   			return mav;
	   }
	   
	   // 결제 내역 리스트 출력 페이지
	   @GetMapping("/paymentdetail")
	   public ModelAndView paymentdetail(HttpSession session) {
	      ModelAndView mav = new ModelAndView();
	      
	      mav.addObject("list", service.paySelect((String)session.getAttribute("logId")));
	      mav.setViewName("subscription/paymentdetail");
	      return mav;
	   }
	
}