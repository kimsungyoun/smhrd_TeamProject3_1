package kr.or.smhrd.dto;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class KeywordDTO {
    private int kNo; // k_no
    private int gNo; // g_no
    private String gKeyword; // g_keyword
}
