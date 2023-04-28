package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U2320Service;
import iohp.page.KW30000.service.KW30000U2320VO;

@Service("KW30000U2320Service") 
public class KW30000U2320ServiceImpl implements KW30000U2320Service {

	@Resource(name = "KW30000U2320DAO")
	private KW30000U2320DAO kw30000u2320DAO;

	/* 조회 */
	@Override
	public List<KW30000U2320VO> KW30000U2320select(SearchHndlr search) throws Exception {
		List<KW30000U2320VO> result = kw30000u2320DAO.KW30000U2320selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U2320selectCnt(SearchHndlr search) throws Exception {
		return kw30000u2320DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U2320delete(KW30000U2320VO kw30000u2320vo) throws Exception {
		return kw30000u2320DAO.KW30000U2320delete(kw30000u2320vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U2320insertSave(KW30000U2320VO kw30000u2320vo) throws Exception { 
		 return kw30000u2320DAO.KW30000U2320insertSave(kw30000u2320vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U2320updateSave(KW30000U2320VO kw30000u2320vo) throws Exception { 
		 return kw30000u2320DAO.KW30000U2320updateSave(kw30000u2320vo); 
	}
	 
	 


}
