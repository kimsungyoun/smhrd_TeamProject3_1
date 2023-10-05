package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.PagingDTO;

@Controller
@RequestMapping("/faq")
public class FaqController {
   
   @GetMapping("/faqList")
   public String faq() {
      return "faq/faqList";
   }
}