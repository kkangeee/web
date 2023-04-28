package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U6300Service;
import iohp.page.KW30000.service.KW30000U6300VO;
 
@Service("KW30000U6300Service")
public class KW30000U6300ServiceImpl implements KW30000U6300Service {

	@Resource(name = "KW30000U6300DAO")
	private KW30000U6300DAO kw30000u6300DAO;

	/*
	 * @Override public List<KW30000U6300VO> KW30000U6300pageList(KW30000U6300VO
	 * kw30000u6300vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u6300vo); return
	 * kw30000u6300DAO.KW30000U6300pageList(kw30000u6300vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U6300VO> KW30000U6300select(SearchHndlr search) throws Exception {
		List<KW30000U6300VO> result = kw30000u6300DAO.KW30000U6300selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U6300selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u6300DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U6300delete(KW30000U6300VO kw30000u6300vo) throws Exception {
		return kw30000u6300DAO.KW30000U6300delete(kw30000u6300vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U6300insertSave(KW30000U6300VO kw30000u6300vo) throws Exception { 
		 return kw30000u6300DAO.KW30000U6300insertSave(kw30000u6300vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U6300updateSave(KW30000U6300VO kw30000u6300vo) throws Exception { 
		 return kw30000u6300DAO.KW30000U6300updateSave(kw30000u6300vo); 
	}
	 
	 


}
