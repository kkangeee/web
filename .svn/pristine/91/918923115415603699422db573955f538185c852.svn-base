package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U2330Service;
import iohp.page.KW30000.service.KW30000U2330VO;

@Service("KW30000U2330Service") 
public class KW30000U2330ServiceImpl implements KW30000U2330Service {

	@Resource(name = "KW30000U2330DAO")
	private KW30000U2330DAO kw30000u2330DAO;

	/* 조회 */
	@Override
	public List<KW30000U2330VO> KW30000U2330select(SearchHndlr search) throws Exception {
		List<KW30000U2330VO> result = kw30000u2330DAO.KW30000U2330selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U2330selectCnt(SearchHndlr search) throws Exception {
		return kw30000u2330DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U2330delete(KW30000U2330VO kw30000u2330vo) throws Exception {
		return kw30000u2330DAO.KW30000U2330delete(kw30000u2330vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U2330insertSave(KW30000U2330VO kw30000u2330vo) throws Exception { 
		 return kw30000u2330DAO.KW30000U2330insertSave(kw30000u2330vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U2330updateSave(KW30000U2330VO kw30000u2330vo) throws Exception { 
		 return kw30000u2330DAO.KW30000U2330updateSave(kw30000u2330vo); 
	}
	 
	 


}
