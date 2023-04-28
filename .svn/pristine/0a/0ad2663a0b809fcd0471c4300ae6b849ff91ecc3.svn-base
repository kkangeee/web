package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U2310Service;
import iohp.page.KW30000.service.KW30000U2310VO;

@Service("KW30000U2310Service") 
public class KW30000U2310ServiceImpl implements KW30000U2310Service {

	@Resource(name = "KW30000U2310DAO")
	private KW30000U2310DAO kw30000u2310DAO;

	/* 조회 */
	@Override
	public List<KW30000U2310VO> KW30000U2310select(SearchHndlr search) throws Exception {
		List<KW30000U2310VO> result = kw30000u2310DAO.KW30000U2310selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW30000U2310selectCnt(SearchHndlr search) throws Exception {
		return kw30000u2310DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U2310delete(KW30000U2310VO kw30000u2310vo) throws Exception {
		return kw30000u2310DAO.KW30000U2310delete(kw30000u2310vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U2310insertSave(KW30000U2310VO kw30000u2310vo) throws Exception { 
		 return kw30000u2310DAO.KW30000U2310insertSave(kw30000u2310vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U2310updateSave(KW30000U2310VO kw30000u2310vo) throws Exception { 
		 return kw30000u2310DAO.KW30000U2310updateSave(kw30000u2310vo); 
	}
	 
	 


}
