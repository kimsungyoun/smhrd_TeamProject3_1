package kr.or.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.service.SubscriptionService;

@RestController
@RequestMapping("/subscription")
public class SubscriptionController {

	@Autowired
	SubscriptionService service;

	@GetMapping("/detail")
	   public ModelAndView getView(String u_id) {
		ModelAndView mav = new ModelAndView();
		
	    mav.addObject("dto", service.getView(u_id));      
	   
	    mav.setViewName("subscription/subscription");
	    
	    return mav;
	}
}