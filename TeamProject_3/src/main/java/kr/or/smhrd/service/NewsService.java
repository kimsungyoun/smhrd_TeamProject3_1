<<<<<<< HEAD
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
=======
package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;

public interface NewsService {
	public List <NewsDTO> getList(PagingDTO pDTO);  
	public NewsDTO getView(int n_no);
	public int NewsDel(int n_no);
	
	public int totalRecord(PagingDTO pDTO);
	public void hitCount(int n_no);
	public List <NewsDTO> bestList();
	
}
>>>>>>> 98b3fe192415e159ad9a3dcc210511efbe244beb
