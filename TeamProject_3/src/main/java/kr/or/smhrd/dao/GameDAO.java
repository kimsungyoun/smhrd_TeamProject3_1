package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;

public interface GameDAO {
	public List <GameDTO> getList(); 
	public List <GameDTO> resetList(); 
	
	public GameDTO getView(int g_no); 
}
