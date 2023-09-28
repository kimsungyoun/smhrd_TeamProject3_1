package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.SampleDAO;
import kr.or.smhrd.dao.SubscriptionDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.SampleDTO;
import kr.or.smhrd.dto.SubscriptionDTO;

@Service
public class SubscriptionServiceImpl implements SubscriptionService {
	@Autowired
	SubscriptionDAO dao;

	@Override
	public SubscriptionDTO getView(String u_id) {
		return dao.getView(u_id);
	}	
	
}
