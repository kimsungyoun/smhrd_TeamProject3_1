package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.GameDAO;
import kr.or.smhrd.dto.GameDTO;
import kr.or.smhrd.dto.PagingDTO;

@Service
public class GameServiceImpl implements GameService {
	@Autowired
	GameDAO dao;

	@Override
	public List<GameDTO> getBestList() {
		// TODO Auto-generated method stub
		return dao.getBestList();
	}

	@Override
	public GameDTO getView(int g_no) {
		// TODO Auto-generated method stub
		return dao.getView(g_no);
	}

	@Override
	public int totalRecord(PagingDTO pDTO) {
		// TODO Auto-generated method stub
		return dao.totalRecord(pDTO);
	}

	@Override
	public List<GameDTO> getList(PagingDTO pDTO) {
		// TODO Auto-generated method stub
		return dao.getList(pDTO);
	}


}
