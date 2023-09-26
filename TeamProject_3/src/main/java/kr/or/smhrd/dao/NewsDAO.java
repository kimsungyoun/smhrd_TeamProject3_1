package kr.or.smhrd.dao;

import java.util.List;

<<<<<<< HEAD
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.NewsDTO;

public interface NewsDAO {
	public List <NewsDTO> getList();  // 뉴스리스트 가져오기
	public NewsDTO getView(int nNo);  // 뉴스 상세보기   
	public int totalRecord(PagingDTO pDTO);
	public int onePageRecord(PagingDTO pDTO);
=======
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;

public interface NewsDAO {
	public List <NewsDTO> getList(PagingDTO pDTO);  
	public NewsDTO getView(int n_no);
	public int NewsDel(int n_no);
	
	public int totalRecord(PagingDTO pDTO);
	public void hitCount(int n_no);
	public List<NewsDTO> bestList();
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
}
