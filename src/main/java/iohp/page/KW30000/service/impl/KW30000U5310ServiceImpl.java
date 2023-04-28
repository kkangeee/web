package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5310Service;



@Service("KW30000U5310Service")
public class KW30000U5310ServiceImpl implements KW30000U5310Service{

	@Resource(name="KW30000U5310DAO")
	private KW30000U5310DAO kw30000U5310DAO;

	@Override
	public KW30000U5000VO kw30000u5310View(int contentId) throws Exception {

		return kw30000U5310DAO.kw30000u5310View(contentId);
	}
	
	@Override
	public void kw30000u5310Insert(KW30000U5000VO kw30000U5310VO) throws Exception {
		kw30000U5310DAO.kw30000u5310Insert(kw30000U5310VO);
	}
	
	@Override
	public KW30000U5000VO kw30000u5310UpdateForm(int contentId) throws Exception {
		return kw30000U5310DAO.kw30000u5310UpdateForm(contentId);
	}
	
	@Override
	public void kw30000u5310Update(KW30000U5000VO kw30000U5310VO) throws Exception {
		kw30000U5310DAO.kw30000u5310Update(kw30000U5310VO);
	}
	
	@Override
	public void kw30000u5310Delete(int contentId) throws Exception {
		kw30000U5310DAO.kw30000u5310Delete(contentId);
	}
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return kw30000U5310DAO.getBoardListCnt(search);
	}
	
	@Override
	public List<KW30000U5000VO> selectList(SearchHndlr search) throws Exception {
		
		List<KW30000U5000VO> result = kw30000U5310DAO.selectkw30000u5310List(search);
		return result;
	}
	
	
}
