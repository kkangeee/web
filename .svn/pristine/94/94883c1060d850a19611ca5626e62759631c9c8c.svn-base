package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1140Service;
import iohp.page.KW30000.service.KW30000U1140VO;

@Service("KW30000U1140Service")
public class KW30000U1140ServiceImpl implements KW30000U1140Service {

	@Resource(name = "KW30000U1140DAO")
	private KW30000U1140DAO kw30000u1140DAO;

	/*
	 * @Override public List<KW30000U1140VO> KW30000U1140pageList(KW30000U1140VO
	 * kw30000u1140vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1140vo); return
	 * kw30000u1140DAO.KW30000U1140pageList(kw30000u1140vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1140VO> KW30000U1140select(SearchHndlr search) throws Exception {
		List<KW30000U1140VO> result = kw30000u1140DAO.KW30000U1140selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1140selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_NDST_SFTY_HLTH_CMTE_ORG_CHRT");
		return kw30000u1140DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1140delete(KW30000U1140VO kw30000u1140vo) throws Exception {
		return kw30000u1140DAO.KW30000U1140delete(kw30000u1140vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1140insertSave(KW30000U1140VO kw30000u1140vo) throws Exception { 
		 return kw30000u1140DAO.KW30000U1140insertSave(kw30000u1140vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1140updateSave(KW30000U1140VO kw30000u1140vo) throws Exception { 
		 return kw30000u1140DAO.KW30000U1140updateSave(kw30000u1140vo); 
	}
	 
	 


}
