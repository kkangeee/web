package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U6300VO;

@Repository("KW30000U6400DAO")
public class KW30000U6400DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U6300VO> KW30000U6400pageList(KW30000U6300VO
	 * kw30000u6400vo) { return selectList("kw30000u1000.page6400", kw30000u6400vo);
	 * }
	 */ 
	
	/* 조회 */
	public List<KW30000U6300VO> KW30000U6400selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u6000.page6400selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u6000.getBoardListCnt6400", search);
		}
	
	 
	
}
