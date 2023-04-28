package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1160Service;
import iohp.page.KW30000.service.KW30000U1160VO;
 
@Service("KW30000U1160Service")
public class KW30000U1160ServiceImpl implements KW30000U1160Service {

	@Resource(name = "KW30000U1160DAO")
	private KW30000U1160DAO kw30000u1160DAO;

	/*
	 * @Override public List<KW30000U1160VO> KW30000U1160pageList(KW30000U1160VO
	 * kw30000u1160vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1160vo); return
	 * kw30000u1160DAO.KW30000U1160pageList(kw30000u1160vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1160VO> KW30000U1160select(SearchHndlr search) throws Exception {
		List<KW30000U1160VO> result = kw30000u1160DAO.KW30000U1160selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1160selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_FRST_MED_MGT_SYS");
		return kw30000u1160DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1160delete(KW30000U1160VO kw30000u1160vo) throws Exception {
		return kw30000u1160DAO.KW30000U1160delete(kw30000u1160vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1160insertSave(KW30000U1160VO kw30000u1160vo) throws Exception { 
		 return kw30000u1160DAO.KW30000U1160insertSave(kw30000u1160vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1160updateSave(KW30000U1160VO kw30000u1160vo) throws Exception { 
		 return kw30000u1160DAO.KW30000U1160updateSave(kw30000u1160vo); 
	}
	 
	 


}
