package kr.or.smhrd.service;

import java.util.List;

import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.SubscriptionDTO;
import kr.or.smhrd.dto.SampleDTO;

public interface SubscriptionService {
	public SubscriptionDTO getView(String u_id);
}
