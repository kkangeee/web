package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U5400Service;
import iohp.page.KW30000.service.KW30000U1310VO;

@Service("KW30000U5400Service")
public class KW30000U5400ServiceImpl implements KW30000U5400Service {

	@Resource(name = "KW30000U5400DAO")
	private KW30000U5400DAO kw30000u5400DAO;

  
	/* 조회 */
	@Override
	public List<KW30000U1310VO> KW30000U5400select(SearchHndlr search) throws Exception {
		List<KW30000U1310VO> result = kw30000u5400DAO.KW30000U5400selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U5400selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u5400DAO.getBoardListCnt(search);
	}
	
	@Override
	public KW30000U1310VO kw30000U5400View(int contentId) throws Exception {
		kw30000u5400DAO.cntUpdate(contentId);
		return kw30000u5400DAO.kw30000U5400View(contentId);
	}

	@Override
	public void kw30000U5400Insert(KW30000U1310VO kw30000u1310vo) throws Exception {
		kw30000u5400DAO.kw30000U5400Insert(kw30000u1310vo);
		
	}
	
	@Override
	public KW30000U1310VO kw30000U5400UpdateForm(int contentId) throws Exception {
		return kw30000u5400DAO.kw30000U5400UpdateForm(contentId);
	}
	
	@Override
	public void kw30000U5400Update(KW30000U1310VO kw30000U1310VO) throws Exception {
		kw30000u5400DAO.kw30000U5400Update(kw30000U1310VO);
	}
	

	@Override
	public void kw30000U5400Delete(int contentId) throws Exception {
		kw30000u5400DAO.kw30000U5400Delete(contentId);
		
	}
	

	
	
	
	 
	 
	 


}
