package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U6400Service;
import iohp.page.KW30000.service.KW30000U6300VO;
 
@Service("KW30000U6400Service")
public class KW30000U6400ServiceImpl implements KW30000U6400Service {

	@Resource(name = "KW30000U6400DAO")
	private KW30000U6400DAO kw30000u6400DAO;

	/*
	 * @Override public List<KW30000U6400VO> KW30000U6400pageList(KW30000U6400VO
	 * kw30000u6400vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw30000u6400vo); return
	 * kw30000u6400DAO.KW30000U6400pageList(kw30000u6400vo); }
	 */
  
	/* 조회 */
	@Override
	public List<KW30000U6300VO> KW30000U6400select(SearchHndlr search) throws Exception {
		List<KW30000U6300VO> result = kw30000u6400DAO.KW30000U6400selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U6400selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_BZ_NTC_BRD_CNTNT");
		return kw30000u6400DAO.getBoardListCnt(search);
	}
	
	 
	 


}
