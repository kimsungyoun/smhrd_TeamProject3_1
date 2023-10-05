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
<<<<<<< HEAD
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
=======
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
	private String sub_status;
	
>>>>>>> 9060f71afff174ee88be413e153574e4b2f596a4
	private String u_photo_base64;
}
