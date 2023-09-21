package kr.or.smhrd.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
	private String u_id;       //아이디
	private String u_pw;       //비밀번호
	private String u_name;     //이름
	private String u_email;    //이메일
	private String u_phone;    //전화번호
	private String u_birthdate;//생년월일
	private String u_gender;   //성별
	private byte[] u_photo;    //프로필이미지
	private String u_joindate; //가입일
	private String u_type;     //유형(회원, 관리자)
	
	private String u_photo_base64;
}
