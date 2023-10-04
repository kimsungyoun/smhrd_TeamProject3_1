package kr.or.smhrd.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.UserDTO;
import kr.or.smhrd.service.UserService;

@Controller
@RequestMapping("/register")
public class UserController {
   @Autowired
   UserService service;
   
   @GetMapping("/mypage")
   public ModelAndView mypage(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      UserDTO dto = service.UserSelect((String) session.getAttribute("logId"));
      mav.addObject("dto", dto);
      mav.setViewName("register/mypage");
      
      return mav;
   }

   @GetMapping("/userEdit")
   public ModelAndView userEdit(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
      mav.addObject("dto", dto);
      mav.setViewName("register/userEdit");
      return mav;
   }
   
   @GetMapping("/userResign")
   public ModelAndView userResign(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
      mav.addObject("dto", dto);
      mav.setViewName("register/userResign");
      
      return mav;
   }
   
   @GetMapping("/login")
   public String login() {
      return "/register/login";
   }
   
   @GetMapping("/idSearch")
   public String idSearch() {
      return "/register/idSearch";
   }
   
   @GetMapping("/pwSearch")
   public String pwSearch() {
      return "/register/pwSearch";
   }
   
   @GetMapping("/signUp")
   public String signUp() {
      return "/register/signUp";
   }
      
   @PostMapping("/UserInsert")
   public ModelAndView UserInsert(UserDTO dto) {
      ModelAndView mav = new ModelAndView();
      int result = 0;
      try {         
         result = service.UserInsert(dto);
      }catch(Exception e) {
         System.out.println("error >> "+e);
      }
      
      if(result > 0) {
         mav.setViewName("redirect: login");
      }else {
         mav.setViewName("register/registerResult");
      }
      
      return mav;
   }

   @PostMapping("/loginOk")
   public ModelAndView loginOk(String u_id, String u_pw, HttpSession session) {
      UserDTO dto = service.loginOk(u_id, u_pw);
      
      ModelAndView mav = new ModelAndView();
      
      if(dto != null) {
         session.setAttribute("logId", dto.getU_id());
         session.setAttribute("logName", dto.getU_name());
         session.setAttribute("logStatus", "Y");
         
         mav.setViewName("redirect:/");
      }else {
         mav.setViewName("register/loginResult");
      }
      return mav;
   }
   
   @GetMapping("/logOut")
   public ModelAndView logOut(HttpSession session) {
      session.invalidate();
      ModelAndView mav = new ModelAndView();
      mav.setViewName("redirect:/");
      return mav;
   }
   
   @GetMapping("/memberedit")
   public String memberedit() {
      return "/register/memberedit";
   }
   
   @PostMapping("/UserEdit")
   public ModelAndView UserEdit(UserDTO dto) {
      ModelAndView mav = new ModelAndView();
      try {
         int result = service.UserEdit(dto);
         
         mav.setViewName("redirect: mypage");
      }catch(Exception e){
         e.printStackTrace();
         mav.setViewName("register/UserEditResult");
      }      
      
      return mav;
   }

   @PostMapping("/UserDel")
   public ModelAndView UserDel(String u_id, String u_pw) {
      ModelAndView mav = new ModelAndView();
      int result = service.UserDel(u_id, u_pw);
      
      if(result > 0) {
         mav.setViewName("redirect: /");
      }else {
         mav.addObject("dto",u_id);
         mav.setViewName("redirect: mypage");
      }
      
      return mav;
   }
   
}
