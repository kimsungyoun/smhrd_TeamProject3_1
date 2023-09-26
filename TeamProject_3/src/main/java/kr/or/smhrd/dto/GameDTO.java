package kr.or.smhrd.dto;

<<<<<<< HEAD
=======
import java.sql.Blob;

>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GameDTO {
<<<<<<< HEAD
	private int g_no;          //게임 일련번호
	private String g_name;     //게임 이름
	private String g_info;     //게임 소개
	private float g_ratings;   //평점
	private String g_tag;      //태그
	private int g_views;       //리뷰 수
	private int g_download;    //다운로드 수
	private String g_genre;    //게임 장르
	private String g_released; //게임 출시일
	private int g_saleamount;  //게임 매출액
=======
	private int g_no;          
	private String g_name;     
	private float g_star;   
	private String g_version;
	private int g_reviews;       
	private int g_downloads;    
	private String g_genre;    
	private String g_released; 
	private int g_saleamount; 
	private String g_company;      
	private String g_updated;
	private int g_rank;
	private String g_info;    
	private Blob g_img;
>>>>>>> 2935cad225b7fccc32d774c77f40cea00ee8c047
}
