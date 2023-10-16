package kr.or.smhrd.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/chat")
public class ChatController {
	@Autowired
	private RestTemplate restTemplate;
	
	
	@GetMapping("/chatbot")
	public ModelAndView chatbot() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chatbot");
		return mav;
	}
	
	@PostMapping("/chatOk")
	public ModelAndView chatOk(@RequestParam String userMessage) throws JsonProcessingException, JsonMappingException {
		ModelAndView mav = new ModelAndView();
		String url = "http://127.0.0.1:5000/ask";
		
		HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_JSON);
		
	    ObjectMapper objectMapper = new ObjectMapper();

	    Map<String, String> map = new HashMap<>();
	    map.put("message", userMessage);

	    String jsonRequest;
	    try {
	        jsonRequest = objectMapper.writeValueAsString(map);
	    } catch (JsonProcessingException e) {
	        e.printStackTrace();
	        mav.setViewName("views/chatbot");
	        return mav;
	    }
	    
	    HttpEntity<String> request = new HttpEntity<>(jsonRequest, headers);
	    ResponseEntity<String> response = restTemplate.postForEntity(url, request, String.class);
	    
	    System.out.println("Response from Flask server: " + response.getBody());
	    ObjectMapper mapper = new ObjectMapper();
	    Map<String, Object> responseMap = mapper.readValue(response.getBody(), new TypeReference<Map<String, Object>>() {});
	    mav.addObject("a", responseMap);
	    mav.setViewName("chat/answer");
	    return mav;
	}

}
