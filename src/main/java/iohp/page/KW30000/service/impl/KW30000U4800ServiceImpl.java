package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4800Service;
import iohp.page.KW30000.service.KW30000U4800VO;

@Service("KW30000U4800Service")
public class KW30000U4800ServiceImpl implements KW30000U4800Service {

	@Resource(name = "KW30000U4800DAO")
	private KW30000U4800DAO kw30000u4800DAO;

	/*
	 * @Override public List<KW30000U4800VO> KW30000U4800pageList(KW30000U4800VO
	 * kw30000u4800vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4800vo); return
	 * kw30000u4800DAO.KW30000U4800pageList(kw30000u4800vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4800VO> KW30000U4800select(SearchHndlr search) throws Exception {
		List<KW30000U4800VO> result = kw30000u4800DAO.KW30000U4800selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4800selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_RISK_EVAL_EDU_MGT");
		return kw30000u4800DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4800delete(KW30000U4800VO kw30000u4800vo) throws Exception {
		return kw30000u4800DAO.KW30000U4800delete(kw30000u4800vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4800insertSave(KW30000U4800VO kw30000u4800vo) throws Exception { 
		 return kw30000u4800DAO.KW30000U4800insertSave(kw30000u4800vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4800updateSave(KW30000U4800VO kw30000u4800vo) throws Exception { 
		 return kw30000u4800DAO.KW30000U4800updateSave(kw30000u4800vo); 
	}
	 
	 


}
