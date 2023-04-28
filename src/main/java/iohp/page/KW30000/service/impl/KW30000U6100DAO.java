package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U6100VO;

@Repository("KW30000U6100DAO")
public class KW30000U6100DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U6100VO> KW30000U6100pageList(KW30000U6100VO
	 * kw30000u6100vo) { return selectList("kw30000u1000.page6100", kw30000u6100vo);
	 * }
	 */ 
	
	/* 조회 */
	public List<KW30000U6100VO> KW30000U6100selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u6000.page6100selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u6000.getBoardListCnt6100", search);
		}
	
	/* 삭제 */
	public int KW30000U6100delete(KW30000U6100VO kw30000u6100vo) {
		return delete("kw30000u6000.page6100delete", kw30000u6100vo);
	}
	
	/* 추가 */
	public int KW30000U6100insertSave(KW30000U6100VO kw30000u6100vo) { 
		return insert("kw30000u6000.page6100insertSave", kw30000u6100vo); 
	}

	/* 수정 */
	public int KW30000U6100updateSave(KW30000U6100VO kw30000u6100vo) { 
		return update("kw30000u6000.page6100updateSave", kw30000u6100vo); 
	}
	 
	
}
