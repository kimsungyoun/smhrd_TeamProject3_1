package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.AnalyzeDTO;
import kr.or.smhrd.dto.KeywordDTO;
import kr.or.smhrd.dto.ReviewDTO;

public interface AnalyzeDAO {
	// 분석 차트로 이동
	public List<AnalyzeDTO> getList();
	
	public KeywordDTO keywordSelect(int no);
	
	public List<ReviewDTO> reviewsSelect(int no); // 해당 게임의 유용성 높은 리뷰 10개 보여주기
	public int reviewsCount(int no); // 리뷰 총 개수 세기

}
