package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.AnalyzeDAO;
import kr.or.smhrd.dao.GameDAO;
import kr.or.smhrd.dto.AnalyzeDTO;
import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.KeywordDTO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.ReviewDTO;

@Service
public class AnalyzeServiceImpl implements AnalyzeService {
	@Autowired
	AnalyzeDAO dao;

	@Override
	public KeywordDTO keywordSelect(int no) {
		return dao.keywordSelect(no);
	}

	@Override
	public List<ReviewDTO> reviewsSelect(int no) {
		return dao.reviewsSelect(no);
	}

	@Override
	public int reviewsCount(int no) {
		return dao.reviewsCount(no);
	}

	@Override
	public List<ReviewDTO> reviewKeySelect(int no, String key) {
		return dao.reviewKeySelect(no, key);
	}

	@Override
	public GameDTO gameNameSelect(int no) {
		return dao.gameNameSelect(no);
	}

	@Override
	public List<GameDTO> gameListSelect() {
		return dao.gameListSelect();
	}

}
