package kr.or.smhrd.dto;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class ReviewDTO {
    private String rNo; // r_no
    private String gNo; // g_no
    private String rUser; // r_user
    private Date rWriteDate; // r_writedate
    private String rRatings; // r_ratings
    private String rContent; // r_content (CLOB)
}
