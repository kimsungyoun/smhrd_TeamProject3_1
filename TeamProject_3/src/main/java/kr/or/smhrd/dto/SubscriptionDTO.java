package kr.or.smhrd.dto;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class SubscriptionDTO {
	private int sub_no;	// 구독 일련번호
	private String u_id;	// 유저 아이디
	private String sub_payment;		// 구독 결제일
	private int sub_amoument;		// 결제 금액
	private String sub_status;		// 구독 상태
	private String sub_startdate;		// 구독 시작일
	private String sub_enddate;		// 구독 종료일
}