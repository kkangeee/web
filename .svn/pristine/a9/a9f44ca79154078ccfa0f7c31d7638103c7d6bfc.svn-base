package iohp.login.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import iohp.login.service.LoginService;
import iohp.login.service.LoginVO;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {

	@Resource(name = "LoginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public LoginVO login(LoginVO loginVO) {
		return loginDAO.selectLoginUser(loginVO);
	}
	
	@Override
	public LoginVO mypageLogin(LoginVO loginVO) throws Exception {
		return loginDAO.selectMypageLoginUser(loginVO);
	}
	
	 @Override
	 public int updateMypage(LoginVO loginVO) throws Exception{
		 return loginDAO.updateMypage(loginVO);
	 }
	 
	@Override
	public List<Map<String, Object>> selectRoleMenu(LoginVO loginVO) throws Exception {
		return loginDAO.selectRoleMenu(loginVO);
	}
}
