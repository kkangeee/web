package iohp.mypage.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.mypage.service.KW80000U1100VO;

@Repository("KW80000U1100DAO")
public class KW80000U1100DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW80000U1100VO> KW80000U1100pageList(KW80000U1100VO
	 * kw80000u1100vo) { return selectList("kw80000u1100.page1100", kw80000u1100vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW80000U1100VO> KW80000U1100selectList(SearchHndlr search) throws Exception {
		return selectList("KW80000U1100.page1100selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("KW80000U1100.getBoardListCnt1100", search);
		}
	
	/* 삭제 */
	public int KW80000U1100delete(KW80000U1100VO kw80000u1100vo) {
		return delete("KW80000U1100.page1100delete", kw80000u1100vo);
	}
	
	/* 추가 */
	public int KW80000U1100insertSave(KW80000U1100VO kw80000u1100vo) {
		/*
		 * for(int i = 0; i<123; i++) { kw80000u1100vo.setRoleNm("담당자");
		 * kw80000u1100vo.setNm("홍홍홍"); kw80000u1100vo.setPstn("사원");
		 * kw80000u1100vo.setFonNo("010123123"); kw80000u1100vo.setAplTgtYn("Y");
		 * kw80000u1100vo.setRmk("없음"); insert("kw80000u1100.page1100insertSave",
		 * kw80000u1100vo); }
		 */
		return insert("KW80000U1100.page1100insertSave", kw80000u1100vo); 
	}

	/* 수정 */
	public int KW80000U1100updateSave(KW80000U1100VO kw80000u1100vo) { 
		return update("KW80000U1100.page1100updateSave", kw80000u1100vo); 
	}
	 
	
}
