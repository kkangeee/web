package iohp.page.KW50000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW50000.service.KW50000U1100VO;

@Repository("KW50000U1100DAO")
public class KW50000U1100DAO extends EgovComAbstractDAO {

	/* 조회 */
	public List<KW50000U1100VO> KW50000U1100SelectList(SearchHndlr search) throws Exception {
		return selectList("kw50000u1100.page1100SelectList", search);
	}

	/* 추가 */
	public int KW50000U1100Insert(KW50000U1100VO kw50000u1100vo) throws Exception {
		return insert("kw50000u1100.page1100Insert", kw50000u1100vo);
	}

	/* 삭제 */
	public int KW50000U1100Delete(KW50000U1100VO kw50000u1100vo) throws Exception {
		return delete("kw50000u1100.page1300Delete", kw50000u1100vo);
	}

	/* 일정 단건 선택 */
	public KW50000U1100VO KW50000U1100View(KW50000U1100VO kw50000u1100vo) throws Exception {
		return selectOne("kw50000u1100.page1100getSelect", kw50000u1100vo);
	}

	/* 수정 */
	public int KW50000U1100Update(KW50000U1100VO kw50000u1100vo) throws Exception {
		return update("kw50000u1100.page1300Update", kw50000u1100vo);
	}
}
