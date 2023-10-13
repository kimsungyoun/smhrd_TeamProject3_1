package kr.or.smhrd.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PayDTO {
	private String u_id;   // 유저 아이디
	private int p_amount;  // 결제 금액
	private String p_date; // 결제 날짜
}
