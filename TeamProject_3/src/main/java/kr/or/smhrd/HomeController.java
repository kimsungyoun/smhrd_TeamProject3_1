package kr.or.smhrd;

import java.util.Base64;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.smhrd.dto.GameDTO;
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
		List<GameDTO> list = gService.getBestList();
		// 게임 이미지 처리 - 민지
		for (GameDTO dto : list) {
	          byte[] imageData = dto.getG_img();
	          String base64ImageData = Base64.getEncoder().encodeToString(imageData);
	          dto.setG_img_base64(base64ImageData);
	    }
		model.addAttribute("game", list);
		model.addAttribute("bestnews", nService.bestList());
		
		return "home";
	}
	
}
