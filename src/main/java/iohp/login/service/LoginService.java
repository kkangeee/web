package iohp.login.service;

import java.util.List;
import java.util.Map;

import iohp.page.KW10000.service.KW10000U1200VO;
import iohp.page.KW30000.service.KW30000U1110VO;

public interface LoginService {

	/**
	 * 로그인 여부 검증
	 * 
	 * @param session
	 * @return
	 * @throws Exception
	 */
	public LoginVO login(LoginVO loginVO) throws Exception;

	public LoginVO mypageLogin(LoginVO loginVO) throws Exception;
	
	public int updateMypage(LoginVO loginVO) throws Exception;

	List<Map<String, Object>> selectRoleMenu(LoginVO loginVO) throws Exception;
	
}
