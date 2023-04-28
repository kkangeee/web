package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1230_1Service;
import iohp.page.KW30000.service.KW30000_1200VO;
 
@Service("KW30000U1230_1Service")
public class KW30000U1230_1ServiceImpl implements KW30000U1230_1Service {

	@Resource(name = "KW30000U1230_1DAO")
	private KW30000U1230_1DAO kw30000u1230_1DAO;

	/* 조회 */
	@Override
	public List<KW30000_1200VO> KW30000U1230_1select(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("교육분야");
		search.setPlnMidClss("*");
		List<KW30000_1200VO> result = kw30000u1230_1DAO.KW30000U1230_1selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1230_1selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("교육분야");
		search.setPlnMidClss("*");
		return kw30000u1230_1DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1230_1delete(KW30000_1200VO kw30000_1200vo) throws Exception {
		return kw30000u1230_1DAO.KW30000U1230_1delete(kw30000_1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1230_1insertSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1230_1DAO.KW30000U1230_1insertSave(kw30000_1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1230_1updateSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1230_1DAO.KW30000U1230_1updateSave(kw30000_1200vo); 
	}
	 

}
