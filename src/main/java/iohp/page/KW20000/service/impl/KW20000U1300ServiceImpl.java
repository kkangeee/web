package iohp.page.KW20000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW20000.service.KW20000U1300Service;
import iohp.page.KW20000.service.KW20000U1300VO;

@Service("KW20000U1300Service")
public class KW20000U1300ServiceImpl implements KW20000U1300Service {

	@Resource(name = "KW20000U1300DAO")
	private KW20000U1300DAO kw20000u1300DAO;

	/*
	 * @Override public List<KW20000U1300VO> KW20000U1300pageList(KW20000U1300VO
	 * kw20000u1300vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw20000u1300vo); return
	 * kw20000u1300DAO.KW20000U1300pageList(kw20000u1300vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW20000U1300VO> KW20000U1300select(SearchHndlr search) throws Exception {
		List<KW20000U1300VO> result = kw20000u1300DAO.KW20000U1300selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW20000U1300selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_CHEM_MTRL_RCPT_ISS_STUS");
		return kw20000u1300DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW20000U1300delete(KW20000U1300VO kw20000u1300vo) throws Exception {
		return kw20000u1300DAO.KW20000U1300delete(kw20000u1300vo);
	}

	/* 추가 */
	 @Override 
	 public int KW20000U1300insertSave(KW20000U1300VO kw20000u1300vo) throws Exception { 
		 return kw20000u1300DAO.KW20000U1300insertSave(kw20000u1300vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW20000U1300updateSave(KW20000U1300VO kw20000u1300vo) throws Exception { 
		 return kw20000u1300DAO.KW20000U1300updateSave(kw20000u1300vo); 
	}
	 
	 


}
