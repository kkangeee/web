package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1174Service;
import iohp.page.KW30000.service.KW30000U1174VO;

@Service("KW30000U1174Service")
public class KW30000U1174ServiceImpl implements KW30000U1174Service { 

	@Resource(name = "KW30000U1174DAO")
	private KW30000U1174DAO kw30000u1174DAO;

	/*
	 * @Override public List<KW30000U1174VO> KW30000U1174pageList(KW30000U1174VO
	 * kw30000u1174vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1174vo); return
	 * kw30000u1174DAO.KW30000U1174pageList(kw30000u1174vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1174VO> KW30000U1174select(SearchHndlr search) throws Exception {
		List<KW30000U1174VO> result = kw30000u1174DAO.KW30000U1174selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1174selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_HLTH_CARE_ROOM_VSITR");
		return kw30000u1174DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1174delete(KW30000U1174VO kw30000u1174vo) throws Exception {
		return kw30000u1174DAO.KW30000U1174delete(kw30000u1174vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1174insertSave(KW30000U1174VO kw30000u1174vo) throws Exception { 
		 return kw30000u1174DAO.KW30000U1174insertSave(kw30000u1174vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1174updateSave(KW30000U1174VO kw30000u1174vo) throws Exception { 
		 return kw30000u1174DAO.KW30000U1174updateSave(kw30000u1174vo); 
	}
	 
	 


}
