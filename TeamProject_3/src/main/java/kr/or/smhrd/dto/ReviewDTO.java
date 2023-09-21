package kr.or.smhrd.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDTO {
	private int r_no;            //리뷰 일련번호
	private int g_no;            //게임 번호
	private String r_user;       //리뷰 작성자
	private String r_writedate;  //리뷰 작성일
	private float r_ratings;     //리뷰 평점
	private String r_content;    //리뷰 내용
}
