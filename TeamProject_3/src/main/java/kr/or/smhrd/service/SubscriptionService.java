package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dao.SubscriptionDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.SubscriptionDTO;
import kr.or.smhrd.dto.UserDTO;

public interface SubscriptionService {
	public SubscriptionDTO getView(String u_id);
	//public UserDTO UserSelect(String u_id);
	public int UserInsert(SubscriptionDTO dto);
}
