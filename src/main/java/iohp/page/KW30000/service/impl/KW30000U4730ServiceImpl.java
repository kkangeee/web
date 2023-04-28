package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4730Service;
import iohp.page.KW30000.service.KW30000U4730VO;

@Service("KW30000U4730Service")
public class KW30000U4730ServiceImpl implements KW30000U4730Service {

	@Resource(name = "KW30000U4730DAO")
	private KW30000U4730DAO kw30000u4730DAO;

	/*
	 * @Override public List<KW30000U4730VO> KW30000U4730pageList(KW30000U4730VO
	 * kw30000u4730vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4730vo); return
	 * kw30000u4730DAO.KW30000U4730pageList(kw30000u4730vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4730VO> KW30000U4730select(SearchHndlr search) throws Exception {
		List<KW30000U4730VO> result = kw30000u4730DAO.KW30000U4730selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4730selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_RISK_EVAL_RSLT_RGST");
		return kw30000u4730DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4730delete(KW30000U4730VO kw30000u4730vo) throws Exception {
		return kw30000u4730DAO.KW30000U4730delete(kw30000u4730vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4730insertSave(KW30000U4730VO kw30000u4730vo) throws Exception { 
		 return kw30000u4730DAO.KW30000U4730insertSave(kw30000u4730vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4730updateSave(KW30000U4730VO kw30000u4730vo) throws Exception { 
		 return kw30000u4730DAO.KW30000U4730updateSave(kw30000u4730vo); 
	}
	 
	 


}
