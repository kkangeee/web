package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4320Service;
import iohp.page.KW30000.service.KW30000U4320VO;

@Service("KW30000U4320Service")
public class KW30000U4320ServiceImpl implements KW30000U4320Service {

	@Resource(name = "KW30000U4320DAO")
	private KW30000U4320DAO kw30000u4320DAO;

	/*
	 * @Override public List<KW30000U4320VO> KW30000U4320pageList(KW30000U4320VO
	 * kw30000u4320vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4320vo); return
	 * kw30000u4320DAO.KW30000U4320pageList(kw30000u4320vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4320VO> KW30000U4320select(SearchHndlr search) throws Exception {
		List<KW30000U4320VO> result = kw30000u4320DAO.KW30000U4320selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4320selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_LOCL_VENT_DVCE_SFTY_CHK");
		return kw30000u4320DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4320delete(KW30000U4320VO kw30000u4320vo) throws Exception {
		return kw30000u4320DAO.KW30000U4320delete(kw30000u4320vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4320insertSave(KW30000U4320VO kw30000u4320vo) throws Exception { 
		 return kw30000u4320DAO.KW30000U4320insertSave(kw30000u4320vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4320updateSave(KW30000U4320VO kw30000u4320vo) throws Exception { 
		 return kw30000u4320DAO.KW30000U4320updateSave(kw30000u4320vo); 
	}
	 
	 


}
