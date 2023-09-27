package kr.or.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.UserDTO;
import kr.or.smhrd.service.AnalyzeService;
import kr.or.smhrd.service.UserService;

@Controller
@RequestMapping("/analyze")
public class AnalyzeController {
	@Autowired
	AnalyzeService service;
	
	@GetMapping("/analyzeList")
	public String getList() {
		return "views/chart";
	}
}
