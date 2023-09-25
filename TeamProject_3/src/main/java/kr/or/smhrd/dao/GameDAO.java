package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;

public interface GameDAO {
	public List <GameDTO> getList();    // 게임 리스트 가져오기
	public List <GameDTO> resetList();  // 게임 리스트 새로고침
	public GameDTO getView(int g_no);   // 게임 상세보기 
}
