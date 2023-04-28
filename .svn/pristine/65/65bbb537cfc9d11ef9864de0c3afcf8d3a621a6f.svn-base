package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4720Service;
import iohp.page.KW30000.service.KW30000U4720VO;

@Service("KW30000U4720Service")
public class KW30000U4720ServiceImpl implements KW30000U4720Service {

	@Resource(name = "KW30000U4720DAO")
	private KW30000U4720DAO kw30000u4720DAO;

	/*
	 * @Override public List<KW30000U4720VO> KW30000U4720pageList(KW30000U4720VO
	 * kw30000u4720vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4720vo); return
	 * kw30000u4720DAO.KW30000U4720pageList(kw30000u4720vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4720VO> KW30000U4720select(SearchHndlr search) throws Exception {
		List<KW30000U4720VO> result = kw30000u4720DAO.KW30000U4720selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4720selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_RISK_EVAL_RSLT_RGST");
		return kw30000u4720DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4720delete(KW30000U4720VO kw30000u4720vo) throws Exception {
		return kw30000u4720DAO.KW30000U4720delete(kw30000u4720vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4720insertSave(KW30000U4720VO kw30000u4720vo) throws Exception { 
		 return kw30000u4720DAO.KW30000U4720insertSave(kw30000u4720vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4720updateSave(KW30000U4720VO kw30000u4720vo) throws Exception { 
		 return kw30000u4720DAO.KW30000U4720updateSave(kw30000u4720vo); 
	}
	 
	 


}
