package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1230Service;
import iohp.page.KW30000.service.KW30000_1200VO;
 
@Service("KW30000U1230Service")
public class KW30000U1230ServiceImpl implements KW30000U1230Service {

	@Resource(name = "KW30000U1230DAO")
	private KW30000U1230DAO kw30000u1230DAO;

	/* 조회 */
	@Override
	public List<KW30000_1200VO> KW30000U1230select(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("교육분야");
		search.setPlnMidClss("정기안전보건교육");
		List<KW30000_1200VO> result = kw30000u1230DAO.KW30000U1230selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1230selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("교육분야");
		search.setPlnMidClss("정기안전보건교육");
		return kw30000u1230DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1230delete(KW30000_1200VO kw30000_1200vo) throws Exception {
		return kw30000u1230DAO.KW30000U1230delete(kw30000_1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1230insertSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1230DAO.KW30000U1230insertSave(kw30000_1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1230updateSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1230DAO.KW30000U1230updateSave(kw30000_1200vo); 
	}
	 
	 


}
