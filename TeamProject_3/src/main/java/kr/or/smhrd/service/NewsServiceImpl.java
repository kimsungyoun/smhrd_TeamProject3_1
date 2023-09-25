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
	public List<NewsDTO> getList(PagingDTO pDTO) {
		// TODO Auto-generated method stub
		return dao.getList(pDTO);
	}

	@Override
	public NewsDTO getView(int n_no) {
		// TODO Auto-generated method stub
		return dao.getView(n_no);
	}

	@Override
	public int NewsDel(int n_no) {
		// TODO Auto-generated method stub
		return dao.NewsDel(n_no);
	}

	@Override
	public int totalRecord(PagingDTO pDTO) {
		// TODO Auto-generated method stub
		return dao.totalRecord(pDTO);
	}

	@Override
	public void hitCount(int n_no) {
		// TODO Auto-generated method stub
		dao.hitCount(n_no);
	}

	@Override
	public List<NewsDTO> bestList() {
		// TODO Auto-generated method stub
		return dao.bestList();
	}

	

}
