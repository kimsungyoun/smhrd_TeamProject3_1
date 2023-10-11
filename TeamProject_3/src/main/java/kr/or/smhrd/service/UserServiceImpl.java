package kr.or.smhrd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.or.smhrd.dao.UserDAO;
import kr.or.smhrd.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO dao;

    @Override
    public int UserInsert(UserDTO dto) {
        return dao.UserInsert(dto);
    }

    @Override
    public int UserCheck(UserDTO dto) {
        // 아이디 중복 체크
        return dao.UserCheck(dto);
    }

    @Override
    public UserDTO loginOk(String u_id, String u_pw) {
        return dao.loginOk(u_id, u_pw);
    }

    @Override
    public UserDTO IdSearch(UserDTO dto) {
        return dao.IdSearch(dto);
    }

    @Override
    public UserDTO PwSearch(UserDTO dto) {
        return dao.PwSearch(dto);
    }

    @Override
    public int UserEdit(UserDTO dto) {
        return dao.UserEdit(dto);
    }

    @Override
    public int UserDel(String u_id, String u_pw) {
        return dao.UserDel(u_id, u_pw);
    }

    @Override
    public UserDTO UserSelect(String u_id) {
        return dao.UserSelect(u_id);
    }

	@Override
	public String CheckId(String u_id) {
		// TODO Auto-generated method stub
		return dao.CheckId(u_id);
	}
    
    

}
