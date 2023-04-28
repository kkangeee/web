package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1150Service;
import iohp.page.KW30000.service.KW30000U1150VO;

@Service("KW30000U1150Service")
public class KW30000U1150ServiceImpl implements KW30000U1150Service {

	@Resource(name = "KW30000U1150DAO")
	private KW30000U1150DAO kw30000u1150DAO;

	/*
	 * @Override public List<KW30000U1150VO> KW30000U1150pageList(KW30000U1150VO
	 * kw30000u1150vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1150vo); return
	 * kw30000u1150DAO.KW30000U1150pageList(kw30000u1150vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1150VO> KW30000U1150select(SearchHndlr search) throws Exception {
		List<KW30000U1150VO> result = kw30000u1150DAO.KW30000U1150selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1150selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_NDST_SFTY_HLTH_CMTE_MNTS");
		return kw30000u1150DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1150delete(KW30000U1150VO kw30000u1150vo) throws Exception {
		return kw30000u1150DAO.KW30000U1150delete(kw30000u1150vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1150insertSave(KW30000U1150VO kw30000u1150vo) throws Exception { 
		 return kw30000u1150DAO.KW30000U1150insertSave(kw30000u1150vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1150updateSave(KW30000U1150VO kw30000u1150vo) throws Exception { 
		 return kw30000u1150DAO.KW30000U1150updateSave(kw30000u1150vo); 
	}
	 
	 


}
