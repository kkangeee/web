package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1175Service;
import iohp.page.KW30000.service.KW30000U1175VO;

@Service("KW30000U1175Service")
public class KW30000U1175ServiceImpl implements KW30000U1175Service { 

	@Resource(name = "KW30000U1175DAO")
	private KW30000U1175DAO kw30000u1175DAO;

	/*
	 * @Override public List<KW30000U1175VO> KW30000U1175pageList(KW30000U1175VO
	 * kw30000u1175vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1175vo); return
	 * kw30000u1175DAO.KW30000U1175pageList(kw30000u1175vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1175VO> KW30000U1175select(SearchHndlr search) throws Exception {
		List<KW30000U1175VO> result = kw30000u1175DAO.KW30000U1175selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1175selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_HSPTL_RQST_TRNSF_STUS");
		return kw30000u1175DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1175delete(KW30000U1175VO kw30000u1175vo) throws Exception {
		return kw30000u1175DAO.KW30000U1175delete(kw30000u1175vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1175insertSave(KW30000U1175VO kw30000u1175vo) throws Exception { 
		 return kw30000u1175DAO.KW30000U1175insertSave(kw30000u1175vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1175updateSave(KW30000U1175VO kw30000u1175vo) throws Exception { 
		 return kw30000u1175DAO.KW30000U1175updateSave(kw30000u1175vo); 
	}
	 
	 


}
