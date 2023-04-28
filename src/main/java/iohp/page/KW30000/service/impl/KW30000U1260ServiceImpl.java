package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1260Service;
import iohp.page.KW30000.service.KW30000_1200VO;

@Service("KW30000U1260Service") 
public class KW30000U1260ServiceImpl implements KW30000U1260Service {

	@Resource(name = "KW30000U1260DAO")
	private KW30000U1260DAO kw30000u1260DAO;

	/* 조회 */
	@Override
	public List<KW30000_1200VO> KW30000U1260select(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("예방관리프로그램"); 
		List<KW30000_1200VO> result = kw30000u1260DAO.KW30000U1260selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1260selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("예방관리프로그램");
		return kw30000u1260DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1260delete(KW30000_1200VO kw30000_1200vo) throws Exception {
		return kw30000u1260DAO.KW30000U1260delete(kw30000_1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1260insertSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1260DAO.KW30000U1260insertSave(kw30000_1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1260updateSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1260DAO.KW30000U1260updateSave(kw30000_1200vo); 
	}
	 
	 


}
