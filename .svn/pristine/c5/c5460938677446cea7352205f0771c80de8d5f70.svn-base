package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW30000.service.KW30000U5000VO;

@Repository("KW30000U5320DAO")
public class KW30000U5320DAO extends EgovComAbstractDAO {
	
	public List<KW30000U5000VO> KW30000U5320selectList(SearchHndlr search) throws Exception{
		return selectList("kw30000u5320.page5320selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw30000u5320.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW30000U5320delete(KW30000U5000VO kw30000u5320vo) {
		return delete("kw30000u5320.page5320delete", kw30000u5320vo);
	}
	
	/* 추가 */
	public int KW30000U5320insertSave(KW30000U5000VO kw30000u5320vo) { 
		return insert("kw30000u5320.page5320insertSave", kw30000u5320vo); 
	}

	/* 수정 */
	public int KW30000U5320updateSave(KW30000U5000VO kw30000u5320vo) { 
		return update("kw30000u5320.page5320updateSave", kw30000u5320vo); 
	}
		

}
