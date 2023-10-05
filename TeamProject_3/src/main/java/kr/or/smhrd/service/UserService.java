<<<<<<< HEAD


package kr.or.smhrd.service;
import kr.or.smhrd.dto.UserDTO;




public interface UserService {
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

=======
package kr.or.smhrd.service;

import kr.or.smhrd.dto.UserDTO;

public interface UserService {
	// �쉶�썝媛��엯
	public int UserInsert(UserDTO dto);
	
	// �븘�씠�뵒 以묐났 泥댄겕
	public int UserCheck(UserDTO dto);
	
	// 濡쒓렇�씤
	public UserDTO loginOk(String u_id, String u_pw);
	
	// 아이디 찾기 폼으로 이동
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
>>>>>>> 9060f71afff174ee88be413e153574e4b2f596a4
