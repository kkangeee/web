package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW30000.service.KW30000U5000VO;

@Repository("KW30000U5200DAO")
public class KW30000U5200DAO extends EgovComAbstractDAO {
	
	public List<KW30000U5000VO> KW30000U5200selectList(SearchHndlr search) throws Exception{
		return selectList("kw30000u5200.page5200selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw30000u5200.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW30000U5200delete(KW30000U5000VO kw30000u5200vo) {
		return delete("kw30000u5200.page5200delete", kw30000u5200vo);
	}
	
	/* 추가 */
	public int KW30000U5200insertSave(KW30000U5000VO kw30000u5200vo) { 
		return insert("kw30000u5200.page5200insertSave", kw30000u5200vo); 
	}

	/* 수정 */
	public int KW30000U5200updateSave(KW30000U5000VO kw30000u5200vo) { 
		return update("kw30000u5200.page5200updateSave", kw30000u5200vo); 
	}
	
	/* 버튼 수정수정 */
	public int KW30000U5200btnYn(KW30000U5000VO kw30000u5200vo) { 
		return update("kw30000u5200.page5200updateBtnYn", kw30000u5200vo); 
	}
		

}
