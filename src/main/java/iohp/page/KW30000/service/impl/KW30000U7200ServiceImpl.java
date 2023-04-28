package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U7200Service;
import iohp.page.KW30000.service.KW30000U7100VO;
 
@Service("KW30000U7200Service")
public class KW30000U7200ServiceImpl implements KW30000U7200Service {

	@Resource(name = "KW30000U7200DAO")
	private KW30000U7200DAO kw30000u7200DAO;

	/*
	 * @Override public List<KW30000U7100VO> KW30000U7200pageList(KW30000U7100VO
	 * kw30000u7100vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u7100vo); return
	 * kw30000u7200DAO.KW30000U7200pageList(kw30000u7100vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U7100VO> KW30000U7200select(SearchHndlr search) throws Exception {
		List<KW30000U7100VO> result = kw30000u7200DAO.KW30000U7200selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U7200selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_SUB_CON_MGT");
		return kw30000u7200DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U7200delete(KW30000U7100VO kw30000u7100vo) throws Exception {
		return kw30000u7200DAO.KW30000U7200delete(kw30000u7100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U7200insertSave(KW30000U7100VO kw30000u7100vo) throws Exception { 
		 return kw30000u7200DAO.KW30000U7200insertSave(kw30000u7100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U7200updateSave(KW30000U7100VO kw30000u7100vo) throws Exception { 
		 return kw30000u7200DAO.KW30000U7200updateSave(kw30000u7100vo); 
	}
	 
	 


}
