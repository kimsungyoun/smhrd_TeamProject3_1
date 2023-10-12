package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.or.smhrd.dao.SubscriptionDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.PayDTO;
import kr.or.smhrd.dto.SubscriptionDTO;

@Service
public class SubscriptionServiceImpl implements SubscriptionService {
	@Autowired
	SubscriptionDAO dao;

	@Override
	public SubscriptionDTO getView(String u_id) {
		return dao.getView(u_id);
	}

	@Override
	public int UserInsert(SubscriptionDTO dto) {
		// TODO Auto-generated method stub
		return dao.UserInsert(dto);
	}

	@Override
	public int subUpdate(String u_id) { //-민지
		return dao.subUpdate(u_id);
	}

	@Override
	public int updateStatus(String u_id) { //-민지
		return dao.updateStatus(u_id);
	}

	@Override
	public int payInsert(String u_id) {
		return dao.payInsert(u_id);
	}

	@Override
	public List<PayDTO> paySelect(String u_id) {
		return dao.paySelect(u_id);
	}



	
	
}
