package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dao.SubscriptionDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.PayDTO;
import kr.or.smhrd.dto.SubscriptionDTO;
import kr.or.smhrd.dto.UserDTO;

public interface SubscriptionService {
	public SubscriptionDTO getView(String u_id);
	//public UserDTO UserSelect(String u_id);
	public int UserInsert(SubscriptionDTO dto);
	public int subUpdate(String u_id); // 구독 결제하면, 구독정보 업데이트 - 민지
	public int payInsert(String u_id); //구독 결제하면, 결제정보 추가
	public int updateStatus(String u_id); // 구독 만료일 지나면, 구독상태 업데이트 - 민지
	public List<PayDTO> paySelect(String u_id); // 해당 유저의 구독 결제 리스트
}
