package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.NewsDTO;

public interface NewsService {
	public List <NewsDTO> getList();  // 뉴스리스트 가져오기
	
	public NewsDTO getView(int nNo);  // 뉴스 상세보기   
}
