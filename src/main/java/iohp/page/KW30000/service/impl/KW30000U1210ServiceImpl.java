package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1210Service;
import iohp.page.KW30000.service.KW30000_1200VO;

@Service("KW30000U1210Service") 
public class KW30000U1210ServiceImpl implements KW30000U1210Service {

	@Resource(name = "KW30000U1210DAO")
	private KW30000U1210DAO kw30000u1210DAO;

	/* 조회 */
	@Override
	public List<KW30000_1200VO> KW30000U1210select(SearchHndlr search) throws Exception {
		search.setPlnLrgClss("평가분야"); 
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		List<KW30000_1200VO> result = kw30000u1210DAO.KW30000U1210selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1210selectCnt(SearchHndlr search) throws Exception {
		search.setPlnLrgClss("평가분야");
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		return kw30000u1210DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1210delete(KW30000_1200VO kw30000_1200vo) throws Exception {
		return kw30000u1210DAO.KW30000U1210delete(kw30000_1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1210insertSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1210DAO.KW30000U1210insertSave(kw30000_1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1210updateSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1210DAO.KW30000U1210updateSave(kw30000_1200vo); 
	}
	 
	 


}
