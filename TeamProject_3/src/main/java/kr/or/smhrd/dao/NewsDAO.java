package kr.or.smhrd.dao;

<<<<<<< HEAD
public interface NewsDAO {

=======
import java.util.List;

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
