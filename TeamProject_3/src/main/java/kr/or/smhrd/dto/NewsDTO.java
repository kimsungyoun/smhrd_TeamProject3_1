package kr.or.smhrd.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class NewsDTO {
    // 뉴스 일련번호 
    private Double n_no;
    // 기사 제목 
    private String n_title;
    // 기사 작성자 
    private String n_reporter;
    // 작성일자 
    private Date created_at;
    // 기사 내용 
    private String n_content;
    // 기사 조회수 
    private Double n_views;
    // 뉴스 카테고리 
    private String n_category;
    // 기사 이미지 
    private String n_img;
}