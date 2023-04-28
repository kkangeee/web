package iohp.page.KW30000.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW30000.service.KW30000U1110VO;

@Repository("KW30000U1110DAO")
public class KW30000U1110DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1110VO> KW30000U1110pageList(KW30000U1110VO
	 * kw30000u1110vo) { return selectList("kw30000u1000.page1110", kw30000u1110vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1110VO> KW30000U1110selectList(SearchHndlr search) throws Exception {
		System.out.println(":::::::::::dddddddd" + search);
		return selectList("kw30000u1000.page1110selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt1110", search);
		}
		
	/* 삭제 */
	public int KW30000U1110delete(KW30000U1110VO kw30000u1110vo) {
		return delete("kw30000u1000.page1110delete", kw30000u1110vo);
	}
	
	/* 추가 */
	public int KW30000U1110insertSave(KW30000U1110VO kw30000u1110vo) { 
		return insert("kw30000u1000.page1110insertSave", kw30000u1110vo); 
	}

	/* 수정 */
	public int KW30000U1110updateSave(KW30000U1110VO kw30000u1110vo) { 
		return update("kw30000u1000.page1110updateSave", kw30000u1110vo); 
	}
	 
	public List<KW30000U1110VO> KW30000U1110popSelect(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1110popList", search);
	}
	
	public List<KW30000U1110VO> KW30000U1110upsert(KW30000U1110VO kw30000u1110vo) throws Exception {
		return selectList("kw30000u1000.page1110upsert", kw30000u1110vo);
	}
	
	public List<KW30000U1110VO> KW30000U1110CertiPopSelect(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1110CertiPopList", search);
	}
	
	public List<Map<String, Object>> codeMngList(SearchHndlr search) throws Exception {
		System.out.println(":::::dao :::::::::" + selectList("kw30000u1000.codeMngList", search));
		return selectList("kw30000u1000.codeMngList", search);
	}
	 
	
}
