package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U6100Service;
import iohp.page.KW30000.service.KW30000U6100VO;
 
@Service("KW30000U6100Service")
public class KW30000U6100ServiceImpl implements KW30000U6100Service {

	@Resource(name = "KW30000U6100DAO")
	private KW30000U6100DAO kw30000u6100DAO;

	/*
	 * @Override public List<KW30000U6100VO> KW30000U6100pageList(KW30000U6100VO
	 * kw30000u6100vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u6100vo); return
	 * kw30000u6100DAO.KW30000U6100pageList(kw30000u6100vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U6100VO> KW30000U6100select(SearchHndlr search) throws Exception {
		List<KW30000U6100VO> result = kw30000u6100DAO.KW30000U6100selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U6100selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u6100DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U6100delete(KW30000U6100VO kw30000u6100vo) throws Exception {
		return kw30000u6100DAO.KW30000U6100delete(kw30000u6100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U6100insertSave(KW30000U6100VO kw30000u6100vo) throws Exception { 
		 return kw30000u6100DAO.KW30000U6100insertSave(kw30000u6100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U6100updateSave(KW30000U6100VO kw30000u6100vo) throws Exception { 
		 return kw30000u6100DAO.KW30000U6100updateSave(kw30000u6100vo); 
	}
	 
	 


}
