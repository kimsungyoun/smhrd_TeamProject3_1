package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class NewsController {
	//뉴스 리스트
	@GetMapping("/newsList")
	String newsList() {
		return "/news/newsList";
	}
	
	//뉴스 상세보기
	@GetMapping("/newsView")
	String newsView() {
		return "/news/newsView";
	}
}
