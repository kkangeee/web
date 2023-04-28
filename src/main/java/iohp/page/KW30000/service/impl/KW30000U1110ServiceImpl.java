package iohp.page.KW30000.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW10000.service.KW10000U2100VO;
import iohp.page.KW30000.service.KW30000U1110Service;
import iohp.page.KW30000.service.KW30000U1110VO;

@Service("KW30000U1110Service")
public class KW30000U1110ServiceImpl implements KW30000U1110Service {

	@Resource(name = "KW30000U1110DAO")
	private KW30000U1110DAO kw30000u1110DAO;

	/*
	 * @Override public List<KW30000U1110VO> KW30000U1110pageList(KW30000U1110VO
	 * kw30000u1110vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1110vo); return
	 * kw30000u1110DAO.KW30000U1110pageList(kw30000u1110vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1110VO> KW30000U1110select(SearchHndlr search) throws Exception {
		List<KW30000U1110VO> result = kw30000u1110DAO.KW30000U1110selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1110selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_SFTY_HLTH_ORG_CMPS");
		return kw30000u1110DAO.getBoardListCnt(search);
	}
	
	/* 팝업 조회 */
	@Override
	public List<KW30000U1110VO> KW30000U1110popSelect(SearchHndlr search) throws Exception {
		List<KW30000U1110VO> result = kw30000u1110DAO.KW30000U1110popSelect(search);
		return result;
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1110delete(KW30000U1110VO kw30000u1110vo) throws Exception {
		return kw30000u1110DAO.KW30000U1110delete(kw30000u1110vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1110insertSave(KW30000U1110VO kw30000u1110vo) throws Exception { 
		 return kw30000u1110DAO.KW30000U1110insertSave(kw30000u1110vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1110updateSave(KW30000U1110VO kw30000u1110vo) throws Exception {
		 return kw30000u1110DAO.KW30000U1110updateSave(kw30000u1110vo); 
	}
	 
	 public List<KW30000U1110VO> KW30000U1110upsert(KW30000U1110VO kw30000u1110vo) throws Exception {
			List<KW30000U1110VO> result = kw30000u1110DAO.KW30000U1110upsert(kw30000u1110vo);
			return result;
		}
	 
	 /* 이수증 팝업 조회 */
		@Override
		public List<KW30000U1110VO> KW30000U1110CertiPopSelect(SearchHndlr search) throws Exception {
			List<KW30000U1110VO> result = kw30000u1110DAO.KW30000U1110CertiPopSelect(search);
			return result;
		}
		
	 


}
