package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1220Service;
import iohp.page.KW30000.service.KW30000_1200VO;
 
@Service("KW30000U1220Service")
public class KW30000U1220ServiceImpl implements KW30000U1220Service {

	@Resource(name = "KW30000U1220DAO")
	private KW30000U1220DAO kw30000u1220DAO;

	/* 조회 */
	@Override
	public List<KW30000_1200VO> KW30000U1220select(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("회의분야");
		search.setPlnMidClss("산업안전보건위원회");
		List<KW30000_1200VO> result = kw30000u1220DAO.KW30000U1220selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1220selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("회의분야");
		search.setPlnMidClss("산업안전보건위원회");
		return kw30000u1220DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1220delete(KW30000_1200VO kw30000_1200vo) throws Exception {
		return kw30000u1220DAO.KW30000U1220delete(kw30000_1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1220insertSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1220DAO.KW30000U1220insertSave(kw30000_1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1220updateSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1220DAO.KW30000U1220updateSave(kw30000_1200vo); 
	}
	 
	 


}
