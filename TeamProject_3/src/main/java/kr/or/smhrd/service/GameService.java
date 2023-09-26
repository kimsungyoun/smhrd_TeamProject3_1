<<<<<<< HEAD
package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;


public interface GameService {
	public List <GameDTO> getList();    // 게임 리스트 가져오기
	public List <GameDTO> resetList();  // 게임 리스트 새로고침
	
	public GameDTO getView(int gNo);   // 게임 상세보기 
	
}

=======
package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.GameDTO;


public interface GameService {
	public List <GameDTO> getList();    // 게임 리스트 가져오기
	public List <GameDTO> resetList();  // 게임 리스트 새로고침
	public GameDTO getView(int g_no);   // 게임 상세보기  
	
}
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
