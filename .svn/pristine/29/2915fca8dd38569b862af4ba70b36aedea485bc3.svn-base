package iohp.page.KW60000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW60000.service.KW60000U5100Service;
import iohp.page.KW60000.service.KW60000VO;



@Service("KW60000U5100Service")
public class KW60000U5100ServiceImpl implements KW60000U5100Service{

	@Resource(name="KW60000U5100DAO")
	private KW60000U5100DAO kw60000U5100DAO;

	@Override
	public KW60000VO kw60000U5100View(int contentId) throws Exception {
		kw60000U5100DAO.cntUpdate(contentId);
		return kw60000U5100DAO.kw60000U5100View(contentId);
	}
	
	@Override
	public void kw60000U5100Insert(KW60000VO kw60000U5100VO) throws Exception {
		kw60000U5100DAO.kw60000U5100Insert(kw60000U5100VO);
	
	}
	
	@Override
	public KW60000VO kw60000U5100UpdateForm(int contentId) throws Exception {
		return kw60000U5100DAO.kw60000U5100UpdateForm(contentId);
	}
	
	@Override
	public void kw60000U5100Update(KW60000VO kw60000U5100VO) throws Exception {
		kw60000U5100DAO.kw60000U5100Update(kw60000U5100VO);
	}
	
	@Override
	public void kw60000U5100Delete(int contentId) throws Exception {
		kw60000U5100DAO.kw60000U5100Delete(contentId);
	}
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return kw60000U5100DAO.getBoardListCnt(search);
	}
	
	@Override
	public List<KW60000VO> selectList(SearchHndlr search) throws Exception {
		List<KW60000VO> result = kw60000U5100DAO.selectkw60000U5100List(search);
		return result;
	}
	
}
