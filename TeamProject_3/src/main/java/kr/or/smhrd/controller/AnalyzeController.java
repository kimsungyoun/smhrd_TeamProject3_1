package kr.or.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import kr.or.smhrd.dto.KeywordDTO;
import kr.or.smhrd.service.AnalyzeService;

@Controller
@RequestMapping("/analyze")
public class AnalyzeController {
	@Autowired
	AnalyzeService service;
	
	@GetMapping("/analyzeList")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView();
		int no = 1;
		KeywordDTO dto = service.keywordSelect(no);

		mav.addObject("dto", dto);
		mav.setViewName("views/chart");
		return mav;
	}
}
