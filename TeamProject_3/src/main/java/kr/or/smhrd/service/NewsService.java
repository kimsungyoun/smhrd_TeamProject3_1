package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;

public interface NewsService {

	public List <NewsDTO> getList(PagingDTO pDTO);

	public int totalRecord(PagingDTO pDTO);

	public void hitCount(int n_no);

	public NewsDTO getView(int n_no);

}
