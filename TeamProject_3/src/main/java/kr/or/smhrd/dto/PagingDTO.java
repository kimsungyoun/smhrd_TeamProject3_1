package kr.or.smhrd.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PagingDTO {
   private int nowPage = 1;         
   private int onePageRecord = 15;      
   private int totalRecord;         
   private int totalPage;            
   private int onePageNumCount = 5;   
   private int startPageNum = 1;      
   private int lastPageRecord = 15;      
   private String searchKey;         
   private String searchWord;         
}