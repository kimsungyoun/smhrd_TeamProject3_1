package kr.or.smhrd.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.smhrd.dto.KeywordDTO;
import kr.or.smhrd.dto.ReviewDTO;
import kr.or.smhrd.service.AnalyzeService;

@Controller
@RequestMapping("/analyze")
public class AnalyzeController {
	@Autowired
	AnalyzeService service;
	@Autowired
	private RestTemplate restTemplate;
	
//	@GetMapping("/analyzeList")
//	public ModelAndView getList() {
//		ModelAndView mav = new ModelAndView();
//		int no = 1;
//		KeywordDTO dto = service.keywordSelect(no);
//		System.out.println(dto.getPos_key());
//
//		mav.addObject("dto", dto);
//		mav.setViewName("views/chart");
//		return mav;
//	}
	
	@GetMapping("/analyzeList")
	public ModelAndView getList2(int no) throws JsonMappingException, JsonProcessingException {
		ModelAndView mav = new ModelAndView();
		
		KeywordDTO Kdto = service.keywordSelect(no); // 키워드
		mav.addObject("dto", Kdto);
		
		List<ReviewDTO> list = service.reviewsSelect(no); // 유용수 높은 리뷰 10개
		mav.addObject("list", list);
		
		int count = service.reviewsCount(no); // 리뷰 총 개수
		mav.addObject("count", count);
		
		RestTemplate restTemplate = new RestTemplate();
	    HttpHeaders headers = new HttpHeaders();
	    
		String url1 = "http://127.0.0.1:5000/wordcloud1?no=" + no;
		String url2 = "http://127.0.0.1:5000/wordcloud2?no=" + no;
	    HttpEntity<String> entity = new HttpEntity<>(headers);
	    ResponseEntity<byte[]> response = restTemplate.exchange(url1, HttpMethod.GET, entity, byte[].class);
	    ResponseEntity<byte[]> response2 = restTemplate.exchange(url2, HttpMethod.GET, entity, byte[].class);
	    if (response.getStatusCode().is2xxSuccessful()) {
	        byte[] imageBytes = response.getBody();
	        byte[] imageBytes2 = response2.getBody();
	        mav.addObject("pos_wordcloudImage", Base64.getEncoder().encodeToString(imageBytes));
	        mav.addObject("neg_wordcloudImage", Base64.getEncoder().encodeToString(imageBytes2));
	    }
	    
	    String url3 = "http://127.0.0.1:5000/pie?no=" + no;
	    HttpEntity<String> entity2 = new HttpEntity<>(headers);
	    ResponseEntity<byte[]> response3 = restTemplate.exchange(url3, HttpMethod.GET, entity2, byte[].class);
	    if (response3.getStatusCode().is2xxSuccessful()) {
	        byte[] responseData = response3.getBody();
	        String pieJson = new String(responseData);  // JSON 문자열로 변환
	        ObjectMapper mapper = new ObjectMapper();
	        Map<String, Object> responseMap = mapper.readValue(pieJson, new TypeReference<Map<String, Object>>() {});
	        mav.addObject("pie", responseMap);
	    }
	    
	    String url4 = "http://127.0.0.1:5000/line?no=" + no;
	    HttpEntity<String> entity3 = new HttpEntity<>(headers);
	    ResponseEntity<String> response4 = restTemplate.exchange(url4, HttpMethod.GET, entity3, String.class);
	    ObjectMapper mapper = new ObjectMapper();
	    Map<String, Object> responseMap = mapper.readValue(response4.getBody(), new TypeReference<Map<String, Object>>() {});
	    mav.addObject("line", responseMap);
	    
	    
		mav.setViewName("views/chart");
		return mav;
	}
}
