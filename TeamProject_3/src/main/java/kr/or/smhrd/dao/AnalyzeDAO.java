package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.AnalyzeDTO;

public interface AnalyzeDAO {
	// 분석 차트로 이동
	public List<AnalyzeDTO> getList();
	
}
