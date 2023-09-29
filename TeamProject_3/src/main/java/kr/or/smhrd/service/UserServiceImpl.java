package kr.or.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.smhrd.dao.UserDAO;
import kr.or.smhrd.dto.PagingDTO;
import kr.or.smhrd.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO dao;

	@Override
	public int UserInsert(UserDTO dto) {
		// TODO Auto-generated method stub
		return dao.UserInsert(dto);
	}

	@Override
	public int UserCheck(String u_id) {
		// TODO Auto-generated method stub
		return dao.UserCheck(u_id);
	}

	@Override
	public UserDTO loginOk(String u_id, String u_pw) {
		// TODO Auto-generated method stub
		return dao.loginOk(u_id, u_pw);
	}

	@Override
	public UserDTO IdSearch(UserDTO dto) {
		// TODO Auto-generated method stub
		return dao.IdSearch(dto);
	}

	@Override
	public UserDTO PwSearch(UserDTO dto) {
		// TODO Auto-generated method stub
		return dao.PwSearch(dto);
	}

	@Override
	public int UserEdit(UserDTO dto) {
		// TODO Auto-generated method stub
		return dao.UserEdit(dto);
	}

	@Override
	public int UserDel(String u_id, String u_pw) {
		// TODO Auto-generated method stub
		return dao.UserDel(u_id, u_pw);
	}

	@Override
	public UserDTO UserSelect(String u_id) {
		// TODO Auto-generated method stub
		return dao.UserSelect(u_id);
	}

}
