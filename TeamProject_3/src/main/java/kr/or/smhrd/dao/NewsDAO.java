package kr.or.smhrd.dao;

import java.util.List;


import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.NewsDTO;


public interface NewsDAO {
	public List <NewsDTO> getList(PagingDTO pDTO);  
	public NewsDTO getView(int n_no);
	public int NewsDel(int n_no);
	
	public int totalRecord(PagingDTO pDTO);
	public void hitCount(int n_no);
	public List<NewsDTO> bestList();
	public List<NewsDTO> getList();

}
