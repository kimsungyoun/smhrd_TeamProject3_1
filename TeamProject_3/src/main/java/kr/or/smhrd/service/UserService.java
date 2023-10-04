package kr.or.smhrd.service;

import kr.or.smhrd.dto.UserDTO;

public interface UserService {
	// �쉶�썝媛��엯
	public int UserInsert(UserDTO dto);
	
	// �븘�씠�뵒 以묐났 泥댄겕
	public int UserCheck(UserDTO dto);
	
	// 濡쒓렇�씤
	public UserDTO loginOk(String u_id, String u_pw);
	
	// �븘�씠�뵒 李얘린
	public UserDTO IdSearch(UserDTO dto);
	
	// 鍮꾨�踰덊샇 李얘린
	public UserDTO PwSearch(UserDTO dto);
	
	// 회원정보
	public UserDTO UserSelect(String u_id);
		
	// 회원정보 수정
	public int UserEdit(UserDTO dto);
	
	// �쉶�썝�깉�눜
	public int UserDel(String u_id, String u_pw);
	
}
