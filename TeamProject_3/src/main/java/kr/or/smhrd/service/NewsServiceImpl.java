package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.NewsDAO;
import kr.or.smhrd.dao.SampleDAO;
import kr.or.smhrd.dto.NewsDTO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.SampleDTO;

@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	NewsDAO dao;

	@Override
	public List<NewsDTO> getList() {
		return null;
	}

	@Override
	public int totalRecord(NewsDTO pDTO) {
		return 0;
	}

	@Override
	public void hitCount(int n_no) {
		
	}

	@Override
	public NewsDTO getView(int n_no) {
		return dao.getView(n_no);
	}
}