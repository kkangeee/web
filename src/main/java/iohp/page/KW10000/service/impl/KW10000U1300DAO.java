package iohp.page.KW10000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW10000.service.KW10000U1300VO;

@Repository("KW10000U1300DAO")
public class KW10000U1300DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	public List<KW10000U1300VO> KW10000U1300selectList(SearchHndlr search) throws Exception {
		return selectList("kw10000u1300.page1300selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw10000u1300.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW10000U1300delete(KW10000U1300VO kw10000u1300vo) {
		return delete("kw10000u1300.page1300delete", kw10000u1300vo);
	}
	
	/* 추가 */
	public int KW10000U1300insertSave(KW10000U1300VO kw10000u1300vo) { 
		return insert("kw10000u1300.page1300insertSave", kw10000u1300vo); 
	}

	/* 수정 */
	public int KW10000U1300updateSave(KW10000U1300VO kw10000u1300vo) { 
		return update("kw10000u1300.page1300updateSave", kw10000u1300vo); 
	}
	 
	
}
