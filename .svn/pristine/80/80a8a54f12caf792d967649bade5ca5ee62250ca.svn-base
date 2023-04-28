package iohp.page.KW10000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW10000.service.KW10000U3100VO;

@Repository("KW10000U3100DAO")
public class KW10000U3100DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW10000U3100VO> KW10000U3100pageList(KW10000U3100VO
	 * kw10000u3100vo) { return selectList("kw10000u1000.page3100", kw10000u3100vo);
	 * }
	 */
	
	/*리스트 조회 */
	public List<KW10000U3100VO> KW10000U3100selectList(SearchHndlr search) throws Exception {
		return selectList("kw10000u3100.page3100selectList", search);
	}
	/*팝업 조회*/
	public List<KW10000U3100VO> KW10000U3100popSelect(SearchHndlr search) throws Exception {
		return selectList("kw10000u3100.page3100selectList", search);
	}
	
	/*단위사업체 목록 조회*/
	public List<KW10000U3100VO> KW10000U3100selectUnitCoNm(SearchHndlr search) throws Exception {
		return selectList("kw10000u3100.page3100selectUnitCoNm", search);
	}
	
	/*공정명 목록 조회*/
	public List<KW10000U3100VO> KW10000U3100selectPrcsNm(SearchHndlr search) throws Exception {
		return selectList("kw10000u3100.page3100selectPrcsNm", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw10000u3100.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW10000U3100delete(KW10000U3100VO kw10000u3100vo) {
		return delete("kw10000u3100.page3100delete", kw10000u3100vo);
	}
	
	/* 추가 */
	public int KW10000U3100insertSave(KW10000U3100VO kw10000u3100vo) { 
		return insert("kw10000u3100.page3100insertSave", kw10000u3100vo); 
	}

	/* 수정 */
	public int KW10000U3100updateSave(KW10000U3100VO kw10000u3100vo) { 
		return update("kw10000u3100.page3100updateSave", kw10000u3100vo); 
	}
	 
	
}
