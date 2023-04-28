package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4620Service;
import iohp.page.KW30000.service.KW30000U4610VO;

@Service("KW30000U4620Service")
public class KW30000U4620ServiceImpl implements KW30000U4620Service {

	@Resource(name = "KW30000U4620DAO")
	private KW30000U4620DAO kw30000u4620DAO;

	/*
	 * @Override public List<KW30000U4610VO> KW30000U4610pageList(KW30000U4610VO
	 * kw30000u4610vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4610vo); return
	 * kw30000u4610DAO.KW30000U4610pageList(kw30000u4610vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4610VO> KW30000U4620select(SearchHndlr search) throws Exception {
		List<KW30000U4610VO> result = kw30000u4620DAO.KW30000U4620selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4620selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_WRK_SHP_TOUR_NSPT");
		return kw30000u4620DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U4620delete(KW30000U4610VO kw30000u4610vo) throws Exception {
		return kw30000u4620DAO.KW30000U4620delete(kw30000u4610vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4620insertSave(KW30000U4610VO kw30000u4610vo) throws Exception { 
		 return kw30000u4620DAO.KW30000U4620insertSave(kw30000u4610vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4620updateSave(KW30000U4610VO kw30000u4610vo) throws Exception { 
		 return kw30000u4620DAO.KW30000U4620updateSave(kw30000u4610vo); 
	}
	 
	 


}
