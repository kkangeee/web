package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1172Service;
import iohp.page.KW30000.service.KW30000U1172VO;

@Service("KW30000U1172Service")
public class KW30000U1172ServiceImpl implements KW30000U1172Service {

	@Resource(name = "KW30000U1172DAO")
	private KW30000U1172DAO kw30000u1172DAO;

	/*
	 * @Override public List<KW30000U1172VO> KW30000U1172pageList(KW30000U1172VO
	 * kw30000u1172vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1172vo); return
	 * kw30000u1172DAO.KW30000U1172pageList(kw30000u1172vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1172VO> KW30000U1172select(SearchHndlr search) throws Exception {
		List<KW30000U1172VO> result = kw30000u1172DAO.KW30000U1172selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1172selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_FST_AID_MEDCN_PRVD_STUS");
		return kw30000u1172DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1172delete(KW30000U1172VO kw30000u1172vo) throws Exception {
		return kw30000u1172DAO.KW30000U1172delete(kw30000u1172vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1172insertSave(KW30000U1172VO kw30000u1172vo) throws Exception { 
		 return kw30000u1172DAO.KW30000U1172insertSave(kw30000u1172vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1172updateSave(KW30000U1172VO kw30000u1172vo) throws Exception { 
		 return kw30000u1172DAO.KW30000U1172updateSave(kw30000u1172vo); 
	}
	 
	 


}
