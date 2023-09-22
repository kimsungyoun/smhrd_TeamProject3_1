package kr.or.smhrd.dto;
import java.sql.Blob;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
	private String u_id;       
	private String u_pw;       
	private String u_name;     
	private String u_email;    
	private String u_phone;    
	private String u_birthdate;
	private String u_gender;   
	private byte[] u_photo;    
	private String u_joindate; 
	private String u_type;     
	private String u_photo_base64;
}
