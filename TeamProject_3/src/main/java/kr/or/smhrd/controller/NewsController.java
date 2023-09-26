package kr.or.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.NewsService;
	   
	   
@Controller
@RequestMapping("/news")
public class NewsController {
@Autowired	   
NewsService service;
	@GetMapping("/newsList")
	public String newsList(Model model, PagingDTO pDTO) {
      //db레코드 선택하여 model에 셋팅
     pDTO.setTotalRecord(service.totalRecord(pDTO));
     pDTO.setTotalRecord(service.onePageRecord(pDTO));
     model.addAttribute("list", service.getList(pDTO));
     model.addAttribute("pDTO",pDTO);
      return "/news/newsList";
   }
	
	@GetMapping("/newsView")
	String newsView() {
		return "/news/newsView";
	}
}

