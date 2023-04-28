package iohp.login.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.login.service.LoginVO;

@Repository("LoginDAO")
public class LoginDAO extends EgovComAbstractDAO {

	public LoginVO selectLoginUser(LoginVO loginVO) {
		return selectOne("Login.selectLoginUser", loginVO);
	}
	
	public LoginVO selectMypageLoginUser(LoginVO loginVO) {
		return selectOne("Login.selectMypageLoginUser", loginVO);
	}

	public int updateMypage(LoginVO loginVO) {
		return update("Login.updateMypage", loginVO);
	}
	
	public List<Map<String, Object>> selectRoleMenu(LoginVO loginVO) throws Exception {
		return selectList("Login.selectRoleMenu", loginVO);
	}
	
}

