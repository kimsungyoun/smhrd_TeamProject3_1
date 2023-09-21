package kr.or.smhrd.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GameDTO {
	    private String gNo; 
	    private String gName;
	    private String gInfo; 
	    private String gRatings; 
	    private String gTag; 
	    private String gViews; 
	    private String gDownload; 
	    private String gGenre; 
	    private Date gReleased; 
	    private Long gSaleAmount;
}
