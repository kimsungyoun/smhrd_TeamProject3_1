package kr.or.smhrd.dto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class KeywordDTO {
	private int k_no;         //키워드 일련번호
	private int g_no;         //게임 번호
	private int pos_sum;      //긍정 비율
	private int neg_sum;      //부정 비율
	private String pos_key;
	private String pos_value;
	private String neg_key;
	private String neg_value;
	private String p_top_value;
	private String n_top_value;
	private String word_poskey;
	private String word_posval;
	private String word_negkey;
	private String word_negval;
}
