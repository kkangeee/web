package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1310Service;
import iohp.page.KW30000.service.KW30000U1310VO;
 
@Service("KW30000U1310Service")
public class KW30000U1310ServiceImpl implements KW30000U1310Service {

	@Resource(name = "KW30000U1310DAO")
	private KW30000U1310DAO kw30000u1310DAO;

	/*
	 * @Override public List<KW30000U1310VO> KW30000U1310pageList(KW30000U1310VO
	 * kw30000u1310vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1310vo); return
	 * kw30000u1310DAO.KW30000U1310pageList(kw30000u1310vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1310VO> KW30000U1310select(SearchHndlr search) throws Exception {
		List<KW30000U1310VO> result = kw30000u1310DAO.KW30000U1310selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1310selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u1310DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1310delete(KW30000U1310VO kw30000u1310vo) throws Exception {
		return kw30000u1310DAO.KW30000U1310delete(kw30000u1310vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1310insertSave(KW30000U1310VO kw30000u1310vo) throws Exception { 
		 return kw30000u1310DAO.KW30000U1310insertSave(kw30000u1310vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1310updateSave(KW30000U1310VO kw30000u1310vo) throws Exception { 
		 return kw30000u1310DAO.KW30000U1310updateSave(kw30000u1310vo); 
	}
	 
	 


}
