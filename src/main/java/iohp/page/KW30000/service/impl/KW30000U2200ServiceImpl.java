package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U2200Service;
import iohp.page.KW30000.service.KW30000U2200VO;

@Service("KW30000U2200Service")
public class KW30000U2200ServiceImpl implements KW30000U2200Service {

	@Resource(name = "KW30000U2200DAO")
	private KW30000U2200DAO kw30000u2200DAO;

	/*
	 * @Override public List<KW30000U2200VO> KW30000U2200pageList(KW30000U2200VO
	 * kw30000u2200vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u2200vo); return
	 * kw30000u2200DAO.KW30000U2200pageList(kw30000u2200vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U2200VO> KW30000U2200select(SearchHndlr search) throws Exception {
		List<KW30000U2200VO> result = kw30000u2200DAO.KW30000U2200selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U2200selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_MED_EXAM_STUS");
		return kw30000u2200DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U2200delete(KW30000U2200VO kw30000u2200vo) throws Exception {
		return kw30000u2200DAO.KW30000U2200delete(kw30000u2200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U2200insertSave(KW30000U2200VO kw30000u2200vo) throws Exception { 
		 return kw30000u2200DAO.KW30000U2200insertSave(kw30000u2200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U2200updateSave(KW30000U2200VO kw30000u2200vo) throws Exception { 
		 return kw30000u2200DAO.KW30000U2200updateSave(kw30000u2200vo); 
	}
	 
	 /* 팝업 조회 개수 */
		@Override
		public int KW30000U2200chkPopCnt(SearchHndlr search) throws Exception {
			search.setTableNm("TB_KW50_MED_EXAM_PSNL_STUS");
			System.out.println("dad :::::::::::::::" + search);
			return kw30000u2200DAO.getBoardPopListCnt(search);
		}
	 
	/* 조회 */
	@Override
	public List<KW30000U2200VO> KW30000U2200chkPopList(SearchHndlr search) throws Exception {
		List<KW30000U2200VO> result = kw30000u2200DAO.KW30000U2200chkPopList(search);
		return result;
	}
	 


}
