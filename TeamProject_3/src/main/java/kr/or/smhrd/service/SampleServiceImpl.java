package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.SampleDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.SampleDTO;

@Service
public class SampleServiceImpl implements SampleService {
	@Autowired
	SampleDAO dao;
	
	@Override
	public List<SampleDTO> getList() {
		return dao.getList();
	}

	@Override
	public int totalRecord(PagingDTO pDTO) {
		return dao.totalRecord(pDTO);
	}

	@Override
	public void hitCount(int no) {
		dao.hitCount(no);
	}

	@Override
	public SampleDTO getView(int no) {
		return dao.getView(no);
	}

}
