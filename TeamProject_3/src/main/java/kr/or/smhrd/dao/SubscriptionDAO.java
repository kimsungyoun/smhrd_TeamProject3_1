package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.PayDTO;
import kr.or.smhrd.dto.SubscriptionDTO;

public interface SubscriptionDAO {
	// 구독 본인, 구독 종료일, 다음 결제일, 결제 내역 확인 (월별 결제일), 구독 취소
	public SubscriptionDTO getView(String u_id);
	public int UserInsert(SubscriptionDTO dto);
	public int subUpdate(String u_id); //구독 결제하면, 구독정보 업데이트
	public int payInsert(String u_id); //구독 결제하면, 결제정보 추가
	public int updateStatus(String u_id); // 구독 만료일 지나면, 구독상태 업데이트
	public List<PayDTO> paySelect(String u_id); // 해당 유저의 구독 결제 리스트

}