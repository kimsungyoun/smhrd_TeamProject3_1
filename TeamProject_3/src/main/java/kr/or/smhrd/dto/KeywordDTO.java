package kr.or.smhrd.dto;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class KeywordDTO {
    private int k_no; // k_no
    private int g_no; // g_no
    private String g_keyword; // g_keyword
}
