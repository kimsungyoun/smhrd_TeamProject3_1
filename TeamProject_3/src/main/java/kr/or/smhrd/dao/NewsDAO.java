package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.NewsDTO;

public interface NewsDAO {
	public List <NewsDTO> getList();  // 뉴스리스트 가져오기
	public NewsDTO getView(int nNo);  // 뉴스 상세보기   
}
