package kr.or.smhrd.service;

import kr.or.smhrd.dto.UserDTO;

public interface UserService {
	public int UserInsert(UserDTO dto);  // 회원가입
	
	public UserDTO loginOk(UserDTO dto);  // 로그인 확인(회원 일치여부 검사)    
	
	public UserDTO idSearch(UserDTO dto);  // 아이디 찾기  
	
	public UserDTO pwSearch(UserDTO dto);   // 비밀번호 찾기  
}
