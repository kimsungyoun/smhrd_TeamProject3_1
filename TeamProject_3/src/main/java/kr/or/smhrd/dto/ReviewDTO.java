package kr.or.smhrd.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDTO {
	private int r_no;             // 리뷰 번호     
	private int g_rank;           // 게임 순위
	private String r_user;        // 리뷰 작성자
	private String r_writedate;   // 리뷰 작성일
	private int r_ratings;        // 리뷰 평점
	private String r_content;     // 리뷰 내용
	private int r_utility;        // 리뷰 유용수
}
