package kr.co.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.home.service.SampleService;

@RequestMapping("/sample")
public class SampleController {
	@Autowired
	SampleService service;
	
	@GetMapping("/sampleList")
	public ModelAndView sampleList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", service.getList());
		mav.setViewName("sample/sampleList");
		
		return mav;
	}
}
