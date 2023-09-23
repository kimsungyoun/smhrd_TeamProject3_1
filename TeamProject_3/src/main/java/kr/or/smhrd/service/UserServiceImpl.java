package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.SampleDAO;
import kr.or.smhrd.dao.UserDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.SampleDTO;
import kr.or.smhrd.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO dao;

	@Override
	public int UserInsert(UserDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO loginOk(UserDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDTO idSearch(UserDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDTO pwSearch(UserDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDTO loginOk(String mem_id, String mem_password) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
