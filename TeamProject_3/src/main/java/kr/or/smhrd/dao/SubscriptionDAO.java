package kr.or.smhrd.dao;

import java.util.List;

import kr.or.smhrd.dto.SubscriptionDTO;

public interface SubscriptionDAO {
	// 구독 본인, 구독 종료일, 다음 결제일, 결제 내역 확인 (월별 결제일), 구독 취소
	public SubscriptionDTO getView(String u_id);
	public int UserInsert(SubscriptionDTO dto);
}