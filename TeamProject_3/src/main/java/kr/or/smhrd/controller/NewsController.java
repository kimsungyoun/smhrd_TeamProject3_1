package kr.or.smhrd.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dao.NewsDAO;
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.NewsService;

import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.NewsService;
	   
	   
@Controller
@RequestMapping("/news")
public class NewsController {


	@Autowired
	NewsService service;
	
	// 뉴스게시판으로 이동
	@GetMapping("/newsList")
	public ModelAndView newsList(PagingDTO pDTO) {
		pDTO.setTotalRecord(service.totalRecord(pDTO));
		List<NewsDTO> list = service.getList(pDTO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pDTO", pDTO);
		mav.setViewName("news/newsList");
		
		return mav;
	}
	
	// 뉴스 상세보기
	@GetMapping("/newsView")
	public ModelAndView newsView(int n_no, PagingDTO pDTO) {
		service.hitCount(n_no);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", service.getView(n_no));
		mav.addObject("pDTO", pDTO);
		
		mav.setViewName("news/newsView");
		
		return mav;
	}
	
	// 글 삭제
	@GetMapping("/noticeDel")
	public ModelAndView boardDel(int n_no, HttpSession session) {
		int result = service.NewsDel(n_no);
		ModelAndView mav = new ModelAndView();
		if(result > 0) {
			// 삭제 성공
			mav.setViewName("redirect:newsList");
		}else {
			// 삭제 실패
			mav.addObject("n_no", n_no);
			mav.setViewName("redirect:newsView");
		}
		
		return mav;
	}
	
}

