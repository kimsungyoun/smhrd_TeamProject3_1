package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.NewsDTO;
<<<<<<< HEAD

public interface NewsDAO {
	public NewsDTO getView(int n_no);
	
	public void save(NewsDTO news);
	
	public NewsDTO findByNNo(Double n_no);
	
	public List<NewsDTO> findAll();
	
	public void update(NewsDTO news);
	
	public void delete(Double n_no);
=======
import kr.or.smhrd.dto.PagingDTO;

public interface NewsDAO {
	public List <NewsDTO> getList(PagingDTO pDTO);  
	public NewsDTO getView(int n_no);
	public int NewsDel(int n_no);
	
	public int totalRecord(PagingDTO pDTO);
	public void hitCount(int n_no);
	public List<NewsDTO> bestList();
>>>>>>> 98b3fe192415e159ad9a3dcc210511efbe244beb
}
