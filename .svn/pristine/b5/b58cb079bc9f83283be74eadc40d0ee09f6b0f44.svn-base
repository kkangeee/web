package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1171Service;
import iohp.page.KW30000.service.KW30000U1171VO;

@Service("KW30000U1171Service")
public class KW30000U1171ServiceImpl implements KW30000U1171Service {

	@Resource(name = "KW30000U1171DAO")
	private KW30000U1171DAO kw30000u1171DAO;

	/*
	 * @Override public List<KW30000U1171VO> KW30000U1171pageList(KW30000U1171VO
	 * kw30000u1171vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1171vo); return
	 * kw30000u1171DAO.KW30000U1171pageList(kw30000u1171vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1171VO> KW30000U1171select(SearchHndlr search) throws Exception {
		List<KW30000U1171VO> result = kw30000u1171DAO.KW30000U1171selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1171selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_FST_AID_MEDCN_MGT_RGST");
		return kw30000u1171DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1171delete(KW30000U1171VO kw30000u1171vo) throws Exception {
		return kw30000u1171DAO.KW30000U1171delete(kw30000u1171vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1171insertSave(KW30000U1171VO kw30000u1171vo) throws Exception { 
		 return kw30000u1171DAO.KW30000U1171insertSave(kw30000u1171vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1171updateSave(KW30000U1171VO kw30000u1171vo) throws Exception { 
		 return kw30000u1171DAO.KW30000U1171updateSave(kw30000u1171vo); 
	}
	 
	 


}
