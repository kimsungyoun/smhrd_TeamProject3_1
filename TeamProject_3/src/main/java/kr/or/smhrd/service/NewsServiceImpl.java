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
		return dao.getList();
	}

	@Override
	public NewsDTO getView(int nNo) {
		// TODO Auto-generated method stub
		return dao.getView(nNo);
	}

	@Override
	public int totalRecord(PagingDTO pDTO) {
		// TODO Auto-generated method stub
		return dao.totalRecord(pDTO);
	}

	@Override
	public int onePageRecord(PagingDTO pDTO) {
		// TODO Auto-generated method stub
		return dao.onePageRecord(pDTO);
	}
	
	

}
