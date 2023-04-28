package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4720VO;

@Repository("KW30000U4720DAO")
public class KW30000U4720DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4720VO> KW30000U4720pageList(KW30000U4720VO
	 * kw30000u4720vo) { return selectList("kw30000u4000.page4720", kw30000u4720vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4720VO> KW30000U4720selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4720selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4720delete(KW30000U4720VO kw30000u4720vo) {
		return delete("kw30000u4000.page4720delete", kw30000u4720vo);
	}
	
	/* 추가 */
	public int KW30000U4720insertSave(KW30000U4720VO kw30000u4720vo) { 
		return insert("kw30000u4000.page4720insertSave", kw30000u4720vo); 
	}

	/* 수정 */
	public int KW30000U4720updateSave(KW30000U4720VO kw30000u4720vo) { 
		return update("kw30000u4000.page4720updateSave", kw30000u4720vo); 
	}
	 
	
}
