package kr.or.smhrd.dto;

import java.sql.Clob;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NewsDTO {
	   private int nNo;         
	   private String nTitle;  
	   private String nReporter;
	   private Date nWritedate;
	   private Clob nContent;
	   private int nHit;
	   private String nSource;
}
