package kr.or.smhrd.controller;

import java.util.Base64;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.or.smhrd.dto.SubscriptionDTO;
import kr.or.smhrd.dto.UserDTO;
import kr.or.smhrd.service.SubscriptionService;
import kr.or.smhrd.service.UserService;

@Controller
@RequestMapping("/register")
public class UserController {

   @Autowired
   UserService service;
   
   @Autowired
   SubscriptionService s_service;
   
   @GetMapping("/mypage")
   public ModelAndView mypage(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      UserDTO dto = service.UserSelect((String) session.getAttribute("logId"));
      SubscriptionDTO sdto = s_service.getView((String) session.getAttribute("logId"));
      
      byte[] imageData = dto.getU_photo();
      if (imageData != null) {
         String base64ImageData = Base64.getEncoder().encodeToString(imageData);
         dto.setU_photo_base64(base64ImageData);
      } else {
         dto.setU_photo_base64("사진없음");
      }
      
      mav.addObject("dto", dto);
      mav.addObject("sdto", sdto);
      mav.setViewName("register/mypage");
      
      return mav;
   }
   
   @GetMapping("/userEdit")
   public ModelAndView userEdit(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      UserDTO dto = service.UserSelect((String)session.getAttribute("logId"));
      
      byte[] imageData = dto.getU_photo();
      if (imageData != null) {
         String base64ImageData = Base64.getEncoder().encodeToString(imageData);
         dto.setU_photo_base64(base64ImageData);
      } else {
         dto.setU_photo_base64("사진없음");
      }
      
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
   
   @GetMapping("/idSearch")
   public String idSearch() {
      return "/register/idSearch";
   }

   @PostMapping("/IdSearch")
	public ModelAndView IdSearch(UserDTO dto) {
	   UserDTO result = service.IdSearch(dto);
	   ModelAndView mav = new ModelAndView();
	   
	   if(result != null) {
		   mav.addObject("dto", result);
		   mav.setViewName("register/idShow");
	   }else {
		   mav.addObject("errorMessage", "아이디가 없음");
		   mav.setViewName("register/SearchResult");		   
	   }
	   
	   return mav;
	}
   
   @GetMapping("/pwSearch")
   public String pwSearch() {
      return "/register/pwSearch";
   }
   
   @PostMapping("/PwSearch")
	public ModelAndView PwSearch(UserDTO dto) {
		ModelAndView mav = new ModelAndView();
		UserDTO result = service.PwSearch(dto);
		
		if(result != null) {
			mav.addObject("dto", result);
			mav.setViewName("register/pwShow");
		}else {
			mav.addObject("errorMessage", "비밀번호가 없음");
			mav.setViewName("register/SearchResult");		   
		}
		return mav;
   }
   
   @GetMapping("/signUp")
   public String signUp() {
      return "/register/signUp";
   }
   

   @PostMapping("/UserInsert")
   public ModelAndView UserInsert(UserDTO dto, SubscriptionDTO sdto, @RequestParam("u_photo_base64") String base64ImageData) {
      
      byte[] imageData = null;
       
       if (base64ImageData != null && !base64ImageData.isEmpty()) {
           imageData = Base64.getDecoder().decode(base64ImageData.split(",")[1]);
       }
       dto.setU_photo(imageData);
      
     ModelAndView mav = new ModelAndView();
      try {         
         service.UserInsert(dto);
         
         s_service.UserInsert(sdto);
         
         mav.setViewName("redirect: login");
      }catch(Exception e) {
         System.out.println("error >> " + e);
         mav.setViewName("register/signupFail");
      }
      
      return mav;
      
   }
   
   @GetMapping("/login")
   public String login() {
      return "/register/login";
   }
   

   @PostMapping("/loginOk")
   public ModelAndView loginOk(String u_id, String u_pw, HttpSession session) {
      UserDTO dto = service.loginOk(u_id, u_pw);
      ModelAndView mav = new ModelAndView();
      
      if(dto != null) {
    	  // 구독한 상태(구독상태가 'Y')인 경우, 구독 만료일이 넘었으면 'N'로 바꾸기 - 민지
    	  SubscriptionDTO sdto = s_service.getView(dto.getU_id());
    	  String status = sdto.getSub_status();
    	  
          byte[] imageData = dto.getU_photo();
          if (imageData != null) {
             String base64ImageData = Base64.getEncoder().encodeToString(imageData);
             dto.setU_photo_base64(base64ImageData);
          } else {
             dto.setU_photo_base64("사진없음");
          }
    	 
    	  if ("Y".equals(status)) {
    		  s_service.updateStatus(dto.getU_id());
    	  }
    	  
    	  session.setAttribute("logId", dto.getU_id());
    	  session.setAttribute("logName", dto.getU_name());
    	  session.setAttribute("logStatus", "Y");
    	  session.setAttribute("SubScription", sdto.getSub_status());
    	  session.setAttribute("logImg", dto.getU_photo_base64());
    	  
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
   
   @PostMapping("/UserEdit")
   public ModelAndView UserEdit(UserDTO dto, @RequestParam("u_photo_base64") String base64ImageData) {
     byte[] imageData = Base64.getDecoder().decode(base64ImageData.split(",")[1]);
     dto.setU_photo(imageData);
     
     ModelAndView mav = new ModelAndView();
      try {
         service.UserEdit(dto);
         
         mav.setViewName("redirect: mypage");
      }catch(Exception e){
         e.printStackTrace();
         mav.setViewName("register/UserEditResult");
      }      
      return mav;
   }
   
   @PostMapping("/UserDel")
   public ModelAndView UserDel(String u_id, String u_pw, HttpSession session) {
      ModelAndView mav = new ModelAndView();
      int result = service.UserDel(u_id, u_pw);
      
      if(result > 0) {
    	 session.invalidate();
         mav.setViewName("redirect:/");
      }else {
         mav.setViewName("register/userResignResult");
      }
      return mav;
   }
   
   @GetMapping("/loginInterceptor")
   public String LoginInterceptor() {
	   return "/register/loginInterceptor";
   }
}
