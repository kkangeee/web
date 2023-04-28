package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U6200Service;
import iohp.page.KW30000.service.KW30000U6100VO;
 
@Service("KW30000U6200Service")
public class KW30000U6200ServiceImpl implements KW30000U6200Service {

	@Resource(name = "KW30000U6200DAO")
	private KW30000U6200DAO kw30000u6200DAO;

	/*
	 * @Override public List<KW30000U6100VO> KW30000U6200pageList(KW30000U6100VO
	 * kw30000u6100vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u6100vo); return
	 * kw30000u6200DAO.KW30000U6200pageList(kw30000u6100vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U6100VO> KW30000U6200select(SearchHndlr search) throws Exception {
		List<KW30000U6100VO> result = kw30000u6200DAO.KW30000U6200selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U6200selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u6200DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U6200delete(KW30000U6100VO kw30000u6100vo) throws Exception {
		return kw30000u6200DAO.KW30000U6200delete(kw30000u6100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U6200insertSave(KW30000U6100VO kw30000u6100vo) throws Exception { 
		 return kw30000u6200DAO.KW30000U6200insertSave(kw30000u6100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U6200updateSave(KW30000U6100VO kw30000u6100vo) throws Exception { 
		 return kw30000u6200DAO.KW30000U6200updateSave(kw30000u6100vo); 
	}
	 
	 


}
