package kr.or.smhrd.service;

import kr.or.smhrd.dto.UserDTO;

public interface UserService {

	public int UserInsert(UserDTO dto);
	
	public int UserCheck(UserDTO dto);
	
	public UserDTO loginOk(String u_id, String u_pw);
	
	public UserDTO IdSearch(UserDTO dto);
	
	public UserDTO PwSearch(UserDTO dto);
	
	public UserDTO UserSelect(String u_id);
		
	public int UserEdit(UserDTO dto);
	
	public int UserDel(String u_id, String u_pw);

}
