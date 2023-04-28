package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1173Service;
import iohp.page.KW30000.service.KW30000U1173VO;
import iohp.page.KW30000.service.KW30000U1173chkVO;

@Service("KW30000U1173Service")
public class KW30000U1173ServiceImpl implements KW30000U1173Service {

	@Resource(name = "KW30000U1173DAO")
	private KW30000U1173DAO kw30000u1173DAO;

	/*
	 * @Override public List<KW30000U1173VO> KW30000U1173pageList(KW30000U1173VO
	 * kw30000u1173vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u1173vo); return
	 * kw30000u1173DAO.KW30000U1173pageList(kw30000u1173vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U1173VO> KW30000U1173select(SearchHndlr search) throws Exception {
		List<KW30000U1173VO> result = kw30000u1173DAO.KW30000U1173selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1173selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_AUTO_DFBR_MGT");
		return kw30000u1173DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1173delete(KW30000U1173VO kw30000u1173vo) throws Exception {
		return kw30000u1173DAO.KW30000U1173delete(kw30000u1173vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1173insertSave(KW30000U1173VO kw30000u1173vo) throws Exception { 
		 return kw30000u1173DAO.KW30000U1173insertSave(kw30000u1173vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1173updateSave(KW30000U1173VO kw30000u1173vo) throws Exception { 
		 return kw30000u1173DAO.KW30000U1173updateSave(kw30000u1173vo); 
	}
	
 /* 팝업 점검사항 조회 */
	@Override
	public List<KW30000U1173VO> KW30000U1173popChkList(SearchHndlr search) throws Exception {
		List<KW30000U1173VO> popChkList = kw30000u1173DAO.KW30000U1173popChkList(search);
		return popChkList;
	}
	
	/* 팝업 페이지 조회 */
	@Override
	public List<KW30000U1173VO> KW30000U1173popSelect(SearchHndlr search) throws Exception {
		List<KW30000U1173VO> popSelect = kw30000u1173DAO.KW30000U1173popSelect(search);
		return popSelect;
	}
	 
	/* 팝업창에서 라디오 박스 체크 후 추가 */
	 @Override 
	 public int KW30000U1173popInsertSave(KW30000U1173VO kw30000u1173vo) throws Exception { 
		 System.out.println("DAO ::::::::::::::::::::::::::::" + kw30000u1173vo);
		 return kw30000u1173DAO.KW30000U1173popInsertSave(kw30000u1173vo); 
	}

}
