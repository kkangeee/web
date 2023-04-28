package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1240Service;
import iohp.page.KW30000.service.KW30000U1240VO;

@Service("KW30000U1240Service")
public class KW30000U1240ServiceImpl implements KW30000U1240Service {

	@Resource(name = "KW30000U1240DAO")
	private KW30000U1240DAO kw30000u1240DAO;

	/*
	 * @Override public List<KW30000U1240VO> KW30000U1240pageList(KW30000U1240VO
	 * kw30000u1240vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1240vo); return
	 * kw30000u1240DAO.KW30000U1240pageList(kw30000u1240vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1240VO> KW30000U1240select(SearchHndlr search) throws Exception {
		List<KW30000U1240VO> result = kw30000u1240DAO.KW30000U1240selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1240selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT_EXAM_FLD");
		return kw30000u1240DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1240delete(KW30000U1240VO kw30000u1240vo) throws Exception {
		return kw30000u1240DAO.KW30000U1240delete(kw30000u1240vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1240insertSave(KW30000U1240VO kw30000u1240vo) throws Exception { 
		 return kw30000u1240DAO.KW30000U1240insertSave(kw30000u1240vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1240updateSave(KW30000U1240VO kw30000u1240vo) throws Exception { 
		 return kw30000u1240DAO.KW30000U1240updateSave(kw30000u1240vo); 
	}
	 
	 


}
