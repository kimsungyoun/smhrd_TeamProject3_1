
package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.PagingDTO;


public interface GameService {
	public List <GameDTO> getBestList();    // 게임 리스트 가져오기
	public GameDTO getView(int g_no);   // 게임 상세보기  
	public int totalRecord(PagingDTO pDTO);
	public List<GameDTO> getList(PagingDTO pDTO);
	
}

