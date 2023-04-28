package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U4510Service;
import iohp.page.KW30000.service.KW30000U4510VO;

@Service("KW30000U4510Service")
public class KW30000U4510ServiceImpl implements KW30000U4510Service {

	@Resource(name = "KW30000U4510DAO")
	private KW30000U4510DAO kw30000u4510DAO;

	/*
	 * @Override public List<KW30000U4510VO> KW30000U4510pageList(KW30000U4510VO
	 * kw30000u4510vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u4510vo); return
	 * kw30000u4510DAO.KW30000U4510pageList(kw30000u4510vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U4510VO> KW30000U4510select(SearchHndlr search) throws Exception {
		List<KW30000U4510VO> result = kw30000u4510DAO.KW30000U4510selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U4510selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_PRTT_GEAR_MGT");
		return kw30000u4510DAO.getBoardListCnt(search);
	}

	/* 삭제 */
	@Override
	public int KW30000U4510delete(KW30000U4510VO kw30000u4510vo) throws Exception {
		return kw30000u4510DAO.KW30000U4510delete(kw30000u4510vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U4510insertSave(KW30000U4510VO kw30000u4510vo) throws Exception { 
		 return kw30000u4510DAO.KW30000U4510insertSave(kw30000u4510vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U4510updateSave(KW30000U4510VO kw30000u4510vo) throws Exception { 
		 return kw30000u4510DAO.KW30000U4510updateSave(kw30000u4510vo); 
	}
	 
	 


}
