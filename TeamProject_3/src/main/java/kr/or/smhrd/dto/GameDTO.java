package kr.or.smhrd.dto;

import java.sql.Blob;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GameDTO {
	private int g_no;          
	private String g_name;     
	private String g_info;     
	private float g_ratings;   
	private int g_views;       
	private int g_download;   
	private String g_genre;   
	private String g_released; 
	private int g_saleamount; 
	private float g_star;   
	private String g_version;
	private int g_reviews;       
	private int g_downloads;    
	private String g_company;      
	private String g_updated;
	private int g_rank;

	private byte[] g_img;
	private String g_img_base64; //게임 이미지 바이트배열을 문자열로 처리하여 저장하는 필드 추가 -민지

}
