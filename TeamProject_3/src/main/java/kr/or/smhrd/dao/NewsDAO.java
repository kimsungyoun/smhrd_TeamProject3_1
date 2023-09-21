package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.NewsDTO;

public interface NewsDAO {
	public NewsDTO getView(int n_no);
	
	public void save(NewsDTO news);
	
	public NewsDTO findByNNo(Double n_no);
	
	public List<NewsDTO> findAll();
	
	public void update(NewsDTO news);
	
	public void delete(Double n_no);
}