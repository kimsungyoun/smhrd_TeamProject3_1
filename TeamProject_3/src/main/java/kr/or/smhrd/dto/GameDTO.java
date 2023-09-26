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
<<<<<<< HEAD
	private String g_info;     
	private float g_ratings;   
	private String g_tag;      
	private int g_views;       
	private int g_download;   
	private String g_genre;   
	private String g_released; 
	private int g_saleamount; 
=======
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
