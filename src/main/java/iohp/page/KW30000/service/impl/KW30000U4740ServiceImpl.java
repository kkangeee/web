package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4740Service;
import iohp.page.KW30000.service.KW30000U4740VO;

@Service("KW30000U4740Service")
public class KW30000U4740ServiceImpl implements KW30000U4740Service {

	@Resource(name = "KW30000U4740DAO")
	private KW30000U4740DAO kw30000u4740DAO;

	/*
	 * @Override public List<KW30000U4740VO> KW30000U4740pageList(KW30000U4740VO
	 * kw30000u4740vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4740vo); return
	 * kw30000u4740DAO.KW30000U4740pageList(kw30000u4740vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4740VO> KW30000U4740select(SearchHndlr search) throws Exception {
		List<KW30000U4740VO> result = kw30000u4740DAO.KW30000U4740selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4740selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_RISK_EVAL_RSLT_RGST");
		return kw30000u4740DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4740delete(KW30000U4740VO kw30000u4740vo) throws Exception {
		return kw30000u4740DAO.KW30000U4740delete(kw30000u4740vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4740insertSave(KW30000U4740VO kw30000u4740vo) throws Exception { 
		 return kw30000u4740DAO.KW30000U4740insertSave(kw30000u4740vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4740updateSave(KW30000U4740VO kw30000u4740vo) throws Exception { 
		 return kw30000u4740DAO.KW30000U4740updateSave(kw30000u4740vo); 
	}
	 
	 


}
