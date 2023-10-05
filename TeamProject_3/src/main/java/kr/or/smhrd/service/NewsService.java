<<<<<<< HEAD


package kr.or.smhrd.service;

import java.util.List;
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;


=======
package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;

>>>>>>> 9060f71afff174ee88be413e153574e4b2f596a4
public interface NewsService {
	public List <NewsDTO> getList(PagingDTO pDTO);  
	public NewsDTO getView(int n_no);
	public int NewsDel(int n_no);
	
	public int totalRecord(PagingDTO pDTO);
	public void hitCount(int n_no);
	public List <NewsDTO> bestList();
	
<<<<<<< HEAD
}
=======
}
>>>>>>> 9060f71afff174ee88be413e153574e4b2f596a4
