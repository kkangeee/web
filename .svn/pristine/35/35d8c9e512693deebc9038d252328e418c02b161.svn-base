package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW30000.service.KW30000U5000VO;

@Repository("KW30000U5310DAO")
public class KW30000U5310DAO extends EgovComAbstractDAO {

	public List<KW30000U5000VO> selectkw30000u5310List(SearchHndlr search) throws Exception {
		return selectList("KW30000U5310.selectKW30000U5310List", search);
	}

	public KW30000U5000VO kw30000u5310View(int contentId) {
		return selectOne("KW30000U5310.KW30000U5310View", contentId);
	}

	public void kw30000u5310Insert(KW30000U5000VO kw30000u5310VO) {
		insert("KW30000U5310.KW30000U5310Insert", kw30000u5310VO);
	}

	public KW30000U5000VO kw30000u5310UpdateForm(int contentId) {
		return selectOne("KW30000U5310.KW30000U5310UpdateForm", contentId);
	}

	public void kw30000u5310Update(KW30000U5000VO kw30000u5310VO) {
		update("KW30000U5310.KW30000U5310Update", kw30000u5310VO);
	}

	public void kw30000u5310Delete(int contentId) {
		delete("KW30000U5310.KW30000U5310Delete", contentId);
	}

	// 총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("KW30000U5310.getBoardListCnt", search);
	}

}
