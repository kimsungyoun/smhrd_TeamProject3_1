package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.NewsDTO;

public interface NewsService {

	public List <NewsDTO> getList();

	public int totalRecord(NewsDTO pDTO);

	public void hitCount(int n_no);

	public NewsDTO getView(int n_no);

}
