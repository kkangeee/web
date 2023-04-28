package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1130Service;
import iohp.page.KW30000.service.KW30000U1130VO;

@Service("KW30000U1130Service")
public class KW30000U1130ServiceImpl implements KW30000U1130Service {

	@Resource(name = "KW30000U1130DAO")
	private KW30000U1130DAO kw30000u1130DAO;

	/*
	 * @Override public List<KW30000U1130VO> KW30000U1130pageList(KW30000U1130VO
	 * kw30000u1130vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1130vo); return
	 * kw30000u1130DAO.KW30000U1130pageList(kw30000u1130vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1130VO> KW30000U1130select(SearchHndlr search) throws Exception {
		List<KW30000U1130VO> result = kw30000u1130DAO.KW30000U1130selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1130selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_NDST_SFTY_HLTH_CMTE_CMPS");
		return kw30000u1130DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1130delete(KW30000U1130VO kw30000u1130vo) throws Exception {
		return kw30000u1130DAO.KW30000U1130delete(kw30000u1130vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1130insertSave(KW30000U1130VO kw30000u1130vo) throws Exception { 
		 return kw30000u1130DAO.KW30000U1130insertSave(kw30000u1130vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1130updateSave(KW30000U1130VO kw30000u1130vo) throws Exception { 
		 return kw30000u1130DAO.KW30000U1130updateSave(kw30000u1130vo); 
	}
	 
	 


}
