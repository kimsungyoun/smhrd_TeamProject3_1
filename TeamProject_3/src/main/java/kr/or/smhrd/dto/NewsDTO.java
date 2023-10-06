package kr.or.smhrd.dto;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NewsDTO {
	private int n_no;             
	private String n_title;       
	private String n_reporter;    
	private String n_writedate;   
	private String n_content;     
	private int n_hit;            
	private String n_source;      

}

