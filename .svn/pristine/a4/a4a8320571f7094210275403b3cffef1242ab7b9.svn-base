package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4220Service;
import iohp.page.KW30000.service.KW30000U4220VO;

@Service("KW30000U4220Service")
public class KW30000U4220ServiceImpl implements KW30000U4220Service {

	@Resource(name = "KW30000U4220DAO")
	private KW30000U4220DAO kw30000u4220DAO;

	/*
	 * @Override public List<KW30000U4220VO> KW30000U4220pageList(KW30000U4220VO
	 * kw30000u4220vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4220vo); return
	 * kw30000u4220DAO.KW30000U4220pageList(kw30000u4220vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4220VO> KW30000U4220select(SearchHndlr search) throws Exception {
		List<KW30000U4220VO> result = kw30000u4220DAO.KW30000U4220selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4220selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_WRK_ENV_MSUR_RSLT_STST");
		return kw30000u4220DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4220delete(KW30000U4220VO kw30000u4220vo) throws Exception {
		return kw30000u4220DAO.KW30000U4220delete(kw30000u4220vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4220insertSave(KW30000U4220VO kw30000u4220vo) throws Exception { 
		 return kw30000u4220DAO.KW30000U4220insertSave(kw30000u4220vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4220updateSave(KW30000U4220VO kw30000u4220vo) throws Exception { 
		 return kw30000u4220DAO.KW30000U4220updateSave(kw30000u4220vo); 
	}
	 
	 


}
