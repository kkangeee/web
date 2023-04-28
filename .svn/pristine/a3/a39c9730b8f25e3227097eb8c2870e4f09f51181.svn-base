package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1320Service;
import iohp.page.KW30000.service.KW30000U1310VO;
 
@Service("KW30000U1320Service")
public class KW30000U1320ServiceImpl implements KW30000U1320Service {

	@Resource(name = "KW30000U1320DAO")
	private KW30000U1320DAO kw30000u1320DAO;

	/*
	 * @Override public List<KW30000U1310VO> KW30000U1320pageList(KW30000U1310VO
	 * kw30000u1310vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1310vo); return
	 * kw30000u1320DAO.KW30000U1320pageList(kw30000u1310vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1310VO> KW30000U1320select(SearchHndlr search) throws Exception {
		List<KW30000U1310VO> result = kw30000u1320DAO.KW30000U1320selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1320selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u1320DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1320delete(KW30000U1310VO kw30000u1310vo) throws Exception {
		return kw30000u1320DAO.KW30000U1320delete(kw30000u1310vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1320insertSave(KW30000U1310VO kw30000u1310vo) throws Exception { 
		 return kw30000u1320DAO.KW30000U1320insertSave(kw30000u1310vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1320updateSave(KW30000U1310VO kw30000u1310vo) throws Exception { 
		 return kw30000u1320DAO.KW30000U1320updateSave(kw30000u1310vo); 
	}
	 
	 


}
