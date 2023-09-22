package kr.or.smhrd.dto;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class GameDTO {
    private String gNo; // g_no
    private String gName; // g_name
    private String gInfo; // g_info (CLOB)
    private String gRatings; // g_ratings
    private String gTag; // g_tag
    private String gViews; // g_views
    private String gDownload; // g_download
    private String gGenre; // g_genre
    private Date gReleased; // g_released
    private int gSaleAmount; // g_saleamount

}
