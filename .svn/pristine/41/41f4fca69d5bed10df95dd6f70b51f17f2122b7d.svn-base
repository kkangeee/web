package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1110VO;
import iohp.page.KW30000.service.KW30000U1173VO;
import iohp.page.KW30000.service.KW30000U1173chkVO;

@Repository("KW30000U1173DAO")
public class KW30000U1173DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1173VO> KW30000U1173pageList(KW30000U1173VO
	 * kw30000u1173vo) { return selectList("kw30000u1000.page1173", kw30000u1173vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1173VO> KW30000U1173selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1173selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw30000u1000.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW30000U1173delete(KW30000U1173VO kw30000u1173vo) {
		return delete("kw30000u1000.page1173delete", kw30000u1173vo);
	}
	
	/* 추가 */
	public int KW30000U1173insertSave(KW30000U1173VO kw30000u1173vo) { 
		return insert("kw30000u1000.page1173insertSave", kw30000u1173vo); 
	}

	public int KW30000U1173updateSave(KW30000U1173VO kw30000u1173vo) { 
		return update("kw30000u1000.page1173updateSave", kw30000u1173vo); 
	}
	
	/* 팝업 점검사항 조회 */
	public List<KW30000U1173VO> KW30000U1173popChkList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1173popChkList", search);
	}
	
	/* 팝업 페이지 조회 */
	public List<KW30000U1173VO> KW30000U1173popSelect(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1173popSelect", search);
	}
	
	/* 팝업창에서 라디오 박스 체크 후 추가 */
	public int KW30000U1173popInsertSave(KW30000U1173VO kw30000u1173vo) { 
		return insert("kw30000u1000.page1173popInsertSave", kw30000u1173vo); 
	}
	
	
}
