package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1120Service;
import iohp.page.KW30000.service.KW30000U1120VO;

@Service("KW30000U1120Service")
public class KW30000U1120ServiceImpl implements KW30000U1120Service {

	@Resource(name = "KW30000U1120DAO")
	private KW30000U1120DAO kw30000u1120DAO;
  
	/* 조회 */
	@Override
	public List<KW30000U1120VO> KW30000U1120select(SearchHndlr search) throws Exception {
		List<KW30000U1120VO> result = kw30000u1120DAO.KW30000U1120selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1120selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_SFTY_HLTH_ORG_CHRT");
		return kw30000u1120DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1120delete(KW30000U1120VO kw30000u1120vo) throws Exception {
		return kw30000u1120DAO.KW30000U1120delete(kw30000u1120vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1120insertSave(KW30000U1120VO kw30000u1120vo) throws Exception { 
		 return kw30000u1120DAO.KW30000U1120insertSave(kw30000u1120vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1120updateSave(KW30000U1120VO kw30000u1120vo) throws Exception { 
		 return kw30000u1120DAO.KW30000U1120updateSave(kw30000u1120vo); 
	}
	 
	 


}
