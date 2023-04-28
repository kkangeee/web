package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1120VO;

@Repository("KW30000U1120DAO")
public class KW30000U1120DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1120VO> KW30000U1120pageList(KW30000U1120VO
	 * kw30000u1120vo) { return selectList("kw30000u1000.page1120", kw30000u1120vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1120VO> KW30000U1120selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1120selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1120delete(KW30000U1120VO kw30000u1120vo) {
		return delete("kw30000u1000.page1120delete", kw30000u1120vo);
	}
	
	/* 추가 */
	public int KW30000U1120insertSave(KW30000U1120VO kw30000u1120vo) {
		/*
		 * for(int i = 0; i<123; i++) { kw30000u1120vo.setRoleNm("담당자");
		 * kw30000u1120vo.setNm("홍홍홍"); kw30000u1120vo.setPstn("사원");
		 * kw30000u1120vo.setFonNo("010123123"); kw30000u1120vo.setAplTgtYn("Y");
		 * kw30000u1120vo.setRmk("없음"); insert("kw30000u1000.page1120insertSave",
		 * kw30000u1120vo); }
		 */
		return insert("kw30000u1000.page1120insertSave", kw30000u1120vo); 
	}

	/* 수정 */
	public int KW30000U1120updateSave(KW30000U1120VO kw30000u1120vo) { 
		return update("kw30000u1000.page1120updateSave", kw30000u1120vo); 
	}
	 
	
}
