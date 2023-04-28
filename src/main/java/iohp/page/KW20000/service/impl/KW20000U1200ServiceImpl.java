package iohp.page.KW20000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW20000.service.KW20000U1200Service;
import iohp.page.KW20000.service.KW20000U1200VO;

@Service("KW20000U1200Service") 
public class KW20000U1200ServiceImpl implements KW20000U1200Service {

	@Resource(name = "KW20000U1200DAO")
	private KW20000U1200DAO kw20000u1200DAO;

	/* 조회 */
	@Override
	public List<KW20000U1200VO> KW20000U1200select(SearchHndlr search) throws Exception {
		List<KW20000U1200VO> result = kw20000u1200DAO.KW20000U1200selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW20000U1200selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_CHEM_PRDT_STUS");
		return kw20000u1200DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW20000U1200delete(KW20000U1200VO kw20000u1200vo) throws Exception {
		return kw20000u1200DAO.KW20000U1200delete(kw20000u1200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW20000U1200insertSave(KW20000U1200VO kw20000u1200vo) throws Exception { 
		 return kw20000u1200DAO.KW20000U1200insertSave(kw20000u1200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW20000U1200updateSave(KW20000U1200VO kw20000u1200vo) throws Exception { 
		 return kw20000u1200DAO.KW20000U1200updateSave(kw20000u1200vo); 
	}
	 
	 


}
