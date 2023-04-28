package iohp.page.KW90000.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U1110VO;
import iohp.page.KW90000.service.KW90000U6100Service;
 
@Service("KW90000U6100Service")
public class KW90000U6100ServiceImpl implements KW90000U6100Service {

	@Resource(name = "KW90000U6100DAO")
	private KW90000U6100DAO kw90000u6100DAO;

  
	/* 조회 */
	@Override
	public List<LoginVO> KW90000U6100select(SearchHndlr search) throws Exception {
		List<LoginVO> result = kw90000u6100DAO.KW90000U6100selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW90000U6100selectCnt(SearchHndlr search) throws Exception {
		return kw90000u6100DAO.getBoardListCnt(search);
	}
	
	/* 조회 */
	@Override
	public List<LoginVO> KW90000U6100infoList(SearchHndlr search) throws Exception {
		List<LoginVO> result = kw90000u6100DAO.KW90000U6100infoList(search);
		return result;
	}
	
	/* 수정 */
	 @Override 
	 public int KW90000U6100updateSave(LoginVO loginVo) throws Exception {
		 return kw90000u6100DAO.KW90000U6100updateSave(loginVo); 
	}
	 
}
