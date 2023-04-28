package iohp.page.KW90000.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U1110VO;

@Repository("KW90000U6100DAO")
public class KW90000U6100DAO extends EgovComAbstractDAO {
	
	/* 사용자 목록 조회 */
	public List<LoginVO> KW90000U6100selectList(SearchHndlr search) throws Exception {
		System.out.println("1. 사용자 목록 조회"+ search);
		return selectList("kw90000u6100.page6100selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw90000u6100.getBoardListCnt6100", search);
		}
		
		/* 사용자 정보 조회 */
		public List<LoginVO> KW90000U6100infoList(SearchHndlr search) throws Exception {
			System.out.println("2. 사용자 목록 조회"+ search);
			return selectList("kw90000u6100.page6100infoList", search);
		}
		
		/* 수정 */
		public int KW90000U6100updateSave(LoginVO loginVo) { 
			return update("kw90000u6100.page6100updateSave", loginVo); 
		}
	
}
