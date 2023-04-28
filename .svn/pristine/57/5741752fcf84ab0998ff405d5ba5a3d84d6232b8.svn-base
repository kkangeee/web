package iohp.page.KW90000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW90000.service.KW90000U3100VO;

@Repository("KW90000U3100DAO")
public class KW90000U3100DAO extends EgovComAbstractDAO {
	
	
	/* 조회 */
	public List<KW90000U3100VO> KW90000U3100selectList(SearchHndlr search) throws Exception {
		return selectList("kw90000u3100.page3100selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw90000u3100.getBoardListCnt3100", search);
		}
	
	/* 삭제 */
	public int KW90000U3100delete(KW90000U3100VO kw90000U3100vo) {
		return delete("kw90000u3100.page3100delete", kw90000U3100vo);
	}
	
	/* 추가 */
	public int KW90000U3100insertSave(KW90000U3100VO kw90000U3100vo) { 
		return insert("kw90000u3100.page3100insertSave", kw90000U3100vo); 
	}

	/* 수정 */
	public int KW90000U3100updateSave(KW90000U3100VO kw90000U3100vo) { 
		return update("kw90000u3100.page3100updateSave", kw90000U3100vo); 
	}
	 
	
}
