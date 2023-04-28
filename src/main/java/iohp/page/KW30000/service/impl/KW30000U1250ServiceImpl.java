package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U1250Service;
import iohp.page.KW30000.service.KW30000_1200VO;

@Service("KW30000U1250Service") 
public class KW30000U1250ServiceImpl implements KW30000U1250Service {

	@Resource(name = "KW30000U1250DAO")
	private KW30000U1250DAO kw30000u1250DAO;

	/* 조회 */
	@Override
	public List<KW30000_1200VO> KW30000U1250select(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("환경관리분야");
		List<KW30000_1200VO> result = kw30000u1250DAO.KW30000U1250selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U1250selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ANUAL_PLN_MGT");
		search.setPlnLrgClss("환경관리분야");
		return kw30000u1250DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U1250delete(KW30000_1200VO kw30000_1200vo) throws Exception {
		return kw30000u1250DAO.KW30000U1250delete(kw30000_1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U1250insertSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1250DAO.KW30000U1250insertSave(kw30000_1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U1250updateSave(KW30000_1200VO kw30000_1200vo) throws Exception { 
		 return kw30000u1250DAO.KW30000U1250updateSave(kw30000_1200vo); 
	}
	 
	 


}
