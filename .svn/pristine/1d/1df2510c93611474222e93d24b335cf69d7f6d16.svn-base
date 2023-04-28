package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5200Service;

@Service("KW30000U5200Service")
public class KW30000U5200ServiceImpl implements KW30000U5200Service{
	
	@Resource(name="KW30000U5200DAO")
	private KW30000U5200DAO kw30000u5200DAO;
	@Override
	public List<KW30000U5000VO> KW30000U5200select(SearchHndlr search) throws Exception {
		
		List<KW30000U5000VO> result = kw30000u5200DAO.KW30000U5200selectList(search);
		return result;
	}

	@Override
	public int KW30000U5200selectCnt(SearchHndlr search) throws Exception {
		return kw30000u5200DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW30000U5200delete(KW30000U5000VO kw30000u5200vo) throws Exception {
		return kw30000u5200DAO.KW30000U5200delete(kw30000u5200vo);
	}

	/* 추가 */
	 @Override 
	 public int KW30000U5200insertSave(KW30000U5000VO kw30000u5200vo) throws Exception { 
		 return kw30000u5200DAO.KW30000U5200insertSave(kw30000u5200vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW30000U5200updateSave(KW30000U5000VO kw30000u5200vo) throws Exception { 
		 return kw30000u5200DAO.KW30000U5200updateSave(kw30000u5200vo); 
	}
	 
	/* BtnY */
	@Override
	public void KW30000U5200btnYn(KW30000U5000VO kw30000u5200vo) throws Exception {
		 kw30000u5200DAO.KW30000U5200btnYn(kw30000u5200vo);
	}

}
