package kr.or.smhrd.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubscribtionDTO {
	private int subNo;
	private String uId;
	private Date subPayment;
	private int subAmoument;
	private String subStatus; 
    private Date subStartDate; 
    private Date subEndDate;  
}
