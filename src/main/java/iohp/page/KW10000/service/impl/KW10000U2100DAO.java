package iohp.page.KW10000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW10000.service.KW10000U2100VO;

@Repository("KW10000U2100DAO")
public class KW10000U2100DAO extends EgovComAbstractDAO {
		
	/* 조회 */
	public List<KW10000U2100VO> KW10000U2100selectList(SearchHndlr search) throws Exception {
		return selectList("kw10000u2100.page2100selectList", search);
	}

	/* 팝업리스트 */
	public List<KW10000U2100VO> KW10000U2100popSelect(SearchHndlr search) throws Exception {
		return selectList("kw10000u2100.page2100popList", search);
	}

	/* 단위사업체명 */
	public List<KW10000U2100VO> KW10000U2100UnitCoNm(SearchHndlr search) throws Exception{
		return selectList("kw10000u2100.page2100selectUnitCoNm", search);
	}
	
	/* 공정명 */
	public List<KW10000U2100VO> KW10000U2100PrcsNm(SearchHndlr search) throws Exception {
		System.out.println(":::::" + selectList("kw10000u2100.page2100selectPrcsNm", search));
		return selectList("kw10000u2100.page2100selectPrcsNm", search);
	}
	
	/* 총 게시글 개수 확인 */
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw10000u2100.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW10000U2100delete(KW10000U2100VO kw10000u2100vo) throws Exception {
		return delete("kw10000u2100.page2100delete", kw10000u2100vo);
	}
	
	/* 추가 */
	public int KW10000U2100insertSave(KW10000U2100VO kw10000u2100vo) throws Exception { 
		return insert("kw10000u2100.page2100insertSave", kw10000u2100vo); 
	}

	/* 수정 */
	public int KW10000U2100updateSave(KW10000U2100VO kw10000u2100vo) throws Exception {
			insert("kw10000u2100.page2100insertHisSave", kw10000u2100vo);
		return update("kw10000u2100.page2100updateSave", kw10000u2100vo); 
	}

	
	
}
