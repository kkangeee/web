package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U2100Service;
import iohp.page.KW30000.service.KW30000U2100VO;
 
@Service("KW30000U2100Service")
public class KW30000U2100ServiceImpl implements KW30000U2100Service {

	@Resource(name = "KW30000U2100DAO")
	private KW30000U2100DAO kw30000u2100DAO;

	/*
	 * @Override public List<KW30000U2100VO> KW30000U2100pageList(KW30000U2100VO
	 * kw30000u2100vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u2100vo); return
	 * kw30000u2100DAO.KW30000U2100pageList(kw30000u2100vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U2100VO> KW30000U2100select(SearchHndlr search) throws Exception {
		List<KW30000U2100VO> result = kw30000u2100DAO.KW30000U2100selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U2100selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_HLTH_EXAM_RSLT_TB_MGT");
		return kw30000u2100DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U2100delete(KW30000U2100VO kw30000u2100vo) throws Exception {
		return kw30000u2100DAO.KW30000U2100delete(kw30000u2100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U2100insertSave(KW30000U2100VO kw30000u2100vo) throws Exception { 
		 return kw30000u2100DAO.KW30000U2100insertSave(kw30000u2100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U2100updateSave(KW30000U2100VO kw30000u2100vo) throws Exception { 
		 return kw30000u2100DAO.KW30000U2100updateSave(kw30000u2100vo); 
	}
	 
	 


}
