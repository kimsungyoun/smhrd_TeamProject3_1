package kr.or.smhrd.dto;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NewsDTO {
    private String nNo; // n_no
    private String nTitle; // n_title
    private String nReporter; // n_reporter
    private Date nWriteDate; // n_writedate
    private String nContent; // n_content (CLOB)
    private String nHit; // n_hit
    private String nSource; // n_source
}

