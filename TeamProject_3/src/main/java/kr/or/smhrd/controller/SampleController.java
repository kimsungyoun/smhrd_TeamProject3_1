package kr.or.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.SampleService;

@RestController
@RequestMapping("/sample")
public class SampleController {
	@Autowired
	SampleService service;
	
	@GetMapping("/sampleList")
	public ModelAndView sampleList(PagingDTO pDTO) {
		//pDTO.setTotalRecord(service.totalRecord(pDTO));
		
		ModelAndView mav = new ModelAndView();
		//mav.addObject("dto", service.getList());
		//mav.addObject("pDTO", pDTO);
		
		mav.setViewName("sample/sampleList");
		
		return mav;
	}
	// 
	@GetMapping("/sampleView")
	public ModelAndView boardView(int no, PagingDTO pDTO) {
		service.hitCount(no);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", service.getView(no));
		mav.addObject("pDTO", pDTO);	
				
		mav.setViewName("notice/noticeView");
				
		return mav;
	}
	// 뉴스페이지로 이동
	@GetMapping("/news")
	public ModelAndView newsView(int no, PagingDTO pDTO) {
		service.hitCount(no);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", service.getView(no));
		mav.addObject("pDTO", pDTO);	//  
		mav.setViewName("notice/noticeView");
				
		return mav;
	}
}
