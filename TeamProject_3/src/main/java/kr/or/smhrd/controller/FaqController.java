package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq")
public class FaqController {
   
   @GetMapping("/faqList")
   public String faq() {
      return "faq/faqList";
   }

}