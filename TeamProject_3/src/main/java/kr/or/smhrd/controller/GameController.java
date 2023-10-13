package kr.or.smhrd.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.service.GameService;

@Controller
@RequestMapping("/game")
public class GameController {
	
   @Autowired
   GameService service;
   
   @GetMapping("/gameDetail")
   public ModelAndView gamedetail(int g_no) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("dto", service.getView(g_no));      
      mav.setViewName("game/gameDetail");
      
      return mav;
   }
   
}
