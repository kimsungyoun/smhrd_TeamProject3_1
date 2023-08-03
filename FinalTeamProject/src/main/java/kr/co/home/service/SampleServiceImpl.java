package kr.co.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.home.dao.SampleDAO;
import kr.co.home.dto.SampleDTO;

public class SampleServiceImpl implements SampleService {
	@Autowired
	SampleDAO dao;
	
	@Override
	public List<SampleDTO> getList() {
		// TODO Auto-generated method stub
		return dao.getList();
	}

}
