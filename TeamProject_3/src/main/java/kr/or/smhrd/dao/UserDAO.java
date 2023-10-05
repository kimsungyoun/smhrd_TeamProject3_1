package kr.or.smhrd.dao;

import kr.or.smhrd.dto.UserDTO;

public interface UserDAO {
	// 회원가입
	public int UserInsert(UserDTO dto);
	
	// 아이디 중복 체크
	public int UserCheck(UserDTO dto);
	
	// 로그인
	public UserDTO loginOk(String u_id, String u_pw);
	
	// 아이디 찾기
	public UserDTO IdSearch(String u_name, String u_email);
	
	// 비밀번호 찾기
	public UserDTO PwSearch(String u_id, String u_email);
	
	// 회원정보
	public UserDTO UserSelect(String u_id);
	
	// 회원정보 수정
	public int UserEdit(UserDTO dto);
	
	// 회원탈퇴
	public int UserDel(String u_id, String u_pw);

	

}
