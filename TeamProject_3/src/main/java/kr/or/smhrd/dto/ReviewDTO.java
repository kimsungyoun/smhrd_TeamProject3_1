package kr.or.smhrd.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDTO {
	private int r_no;            
	private int g_no;           
	private String r_user;       
	private String r_writedate;  
	private float r_ratings;     
	private String r_content;    
}
