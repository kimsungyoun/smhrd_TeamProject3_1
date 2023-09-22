package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class NewsController {
	@GetMapping("/newsList")
	String newsList() {
		return "/news/newsList";
	}
	@GetMapping("/newsView")
	String newsView() {
		return "/news/newsView";
	}
	
}
