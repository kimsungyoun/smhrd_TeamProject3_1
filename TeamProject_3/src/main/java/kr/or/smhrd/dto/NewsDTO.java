package kr.or.smhrd.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NewsDTO {
	private int n_no;             //뉴스 일련번호
	private String n_title;       //기사 제목
	private String n_reporter;    //기사 작성자
	private String n_writedate;   //작성 일자
	private String n_content;     //기사 내용
	private int n_hit;            //기사 조회수
	private String n_source;      //뉴스 출처
}
