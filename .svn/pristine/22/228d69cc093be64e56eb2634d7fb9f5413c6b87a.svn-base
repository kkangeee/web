package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5320Service;

@Service("KW30000U5320Service")
public class KW30000U5320ServiceImpl implements KW30000U5320Service{
	
	@Resource(name="KW30000U5320DAO")
	private KW30000U5320DAO kw30000u5320DAO;
	@Override
	public List<KW30000U5000VO> KW30000U5320select(SearchHndlr search) throws Exception {
		
		List<KW30000U5000VO> result = kw30000u5320DAO.KW30000U5320selectList(search);
		
		return result;
	}

	@Override
	public int KW30000U5320selectCnt(SearchHndlr search) throws Exception {
		return kw30000u5320DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U5320delete(KW30000U5000VO kw30000u5320vo) throws Exception {
		return kw30000u5320DAO.KW30000U5320delete(kw30000u5320vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U5320insertSave(KW30000U5000VO kw30000u5320vo) throws Exception { 
		 return kw30000u5320DAO.KW30000U5320insertSave(kw30000u5320vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U5320updateSave(KW30000U5000VO kw30000u5320vo) throws Exception { 
		 return kw30000u5320DAO.KW30000U5320updateSave(kw30000u5320vo); 
	}



}
