package kr.or.smhrd;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.GameService;
import kr.or.smhrd.service.NewsService;

@Controller
public class HomeController {
	@Autowired
	NewsService nService;
	
	@Autowired
	GameService gService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("game", gService.getList());
		model.addAttribute("bestnews", nService.bestList());
		
		return "home";
	}
	
}
