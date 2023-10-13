package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.AnalyzeDTO;
import kr.or.smhrd.dto.KeywordDTO;

public interface AnalyzeDAO {
	// 분석 차트로 이동
	public List<AnalyzeDTO> getList();
	
	public KeywordDTO keywordSelect(int no);
	
}
