package kr.or.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/subscription")
public class PayController {
   @RequestMapping("/payment")
   public String subscription() {
      return "/subscription/payment";
   }
}