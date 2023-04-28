package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4310Service;
import iohp.page.KW30000.service.KW30000U4310VO;

@Service("KW30000U4310Service")
public class KW30000U4310ServiceImpl implements KW30000U4310Service {

	@Resource(name = "KW30000U4310DAO")
	private KW30000U4310DAO kw30000u4310DAO;

	/*
	 * @Override public List<KW30000U4310VO> KW30000U4310pageList(KW30000U4310VO
	 * kw30000u4310vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4310vo); return
	 * kw30000u4310DAO.KW30000U4310pageList(kw30000u4310vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4310VO> KW30000U4310select(SearchHndlr search) throws Exception {
		List<KW30000U4310VO> result = kw30000u4310DAO.KW30000U4310selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4310selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_LOCL_VENT_DVCE_MGT");
		return kw30000u4310DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4310delete(KW30000U4310VO kw30000u4310vo) throws Exception {
		return kw30000u4310DAO.KW30000U4310delete(kw30000u4310vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4310insertSave(KW30000U4310VO kw30000u4310vo) throws Exception { 
		 return kw30000u4310DAO.KW30000U4310insertSave(kw30000u4310vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4310updateSave(KW30000U4310VO kw30000u4310vo) throws Exception { 
		 return kw30000u4310DAO.KW30000U4310updateSave(kw30000u4310vo); 
	}
	 
	 


}
