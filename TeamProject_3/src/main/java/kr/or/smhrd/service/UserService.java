<<<<<<< HEAD

package kr.or.smhrd.service;
import kr.or.smhrd.dto.UserDTO;

public interface UserService {
	public int UserInsert(UserDTO dto);  // 회원가입
	
	public UserDTO loginOk(UserDTO dto);  // 로그인 확인(회원 일치여부 검사)    
	
	public UserDTO idSearch(UserDTO dto);  // 아이디 찾기  
	
	public UserDTO pwSearch(UserDTO dto);

	public UserDTO UserSelect(String attribute);   // 비밀번호 찾기  
}

=======
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
	public UserDTO IdSearch(UserDTO dto);
	
	// 비밀번호 찾기
	public UserDTO PwSearch(UserDTO dto);
	
	// 회원정보
	public UserDTO UserSelect(String u_id);
		
	// 회원정보 수정
	public int UserEdit(UserDTO dto);
	
	// 회원탈퇴
	public int UserDel(String u_id, String u_pw);
	
}
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
