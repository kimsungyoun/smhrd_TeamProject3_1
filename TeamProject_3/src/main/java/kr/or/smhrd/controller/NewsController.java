package kr.or.smhrd.controller;

<<<<<<< HEAD
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
=======
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dao.NewsDAO;
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.NewsService;
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047

@Controller
@RequestMapping("/news")
public class NewsController {
<<<<<<< HEAD
	//´º½º ¸®½ºÆ®
	@GetMapping("/newsList")
	String newsList() {
		return "/news/newsList";
	}
	
	//´º½º »ó¼¼º¸±â
	@GetMapping("/newsView")
	String newsView() {
		return "/news/newsView";
	}
=======
	@Autowired
	NewsService service;
	
	// ë‰´ìŠ¤ê²Œì‹œíŒìœ¼ë¡œ ì´ë™
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
	
	// ë‰´ìŠ¤ ìƒì„¸ë³´ê¸°
	@GetMapping("/newsView")
	public ModelAndView newsView(int n_no, PagingDTO pDTO) {
		service.hitCount(n_no);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", service.getView(n_no));
		mav.addObject("pDTO", pDTO);
		
		mav.setViewName("news/newsView");
		
		return mav;
	}
	
	// ê¸€ ì‚­ì œ
	@GetMapping("/noticeDel")
	public ModelAndView boardDel(int n_no, HttpSession session) {
		int result = service.NewsDel(n_no);
		ModelAndView mav = new ModelAndView();
		if(result > 0) {
			// ì‚­ì œ ì„±ê³µ
			mav.setViewName("redirect:newsList");
		}else {
			// ì‚­ì œ ì‹¤íŒ¨
			mav.addObject("n_no", n_no);
			mav.setViewName("redirect:newsView");
		}
		
		return mav;
	}
	
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
}
