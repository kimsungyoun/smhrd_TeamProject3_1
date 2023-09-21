package kr.or.smhrd.dto;

import java.sql.Blob;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
	private String uId; 
    private String uPw; 
    private String uName; 
    private String uEmail; 
    private String uPhone; 
    private Date uBirthdate; 
    private String uGender; 
    private Blob uPhoto; 
    private Date uJoindate; 
    private String uType;
}
