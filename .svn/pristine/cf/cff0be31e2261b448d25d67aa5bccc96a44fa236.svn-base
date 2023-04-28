package iohp.page.KW60000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW60000.service.KW60000U4100Service;
import iohp.page.KW60000.service.KW60000VO;



@Service("KW60000U4100Service")
public class KW60000U4100ServiceImpl implements KW60000U4100Service{

	@Resource(name="KW60000U4100DAO")
	private KW60000U4100DAO kw60000U4100DAO;

	@Override
	public KW60000VO kw60000U4100View(int contentId) throws Exception {
		kw60000U4100DAO.cntUpdate(contentId);
		return kw60000U4100DAO.kw60000U4100View(contentId);
	}
	
	@Override
	public void kw60000U4100Insert(KW60000VO kw60000U4100VO) throws Exception {
		kw60000U4100DAO.kw60000U4100Insert(kw60000U4100VO);
	
	}
	
	@Override
	public KW60000VO kw60000U4100UpdateForm(int contentId) throws Exception {
		return kw60000U4100DAO.kw60000U4100UpdateForm(contentId);
	}
	
	@Override
	public void kw60000U4100Update(KW60000VO kw60000U4100VO) throws Exception {
		kw60000U4100DAO.kw60000U4100Update(kw60000U4100VO);
	}
	
	@Override
	public void kw60000U4100Delete(int contentId) throws Exception {
		kw60000U4100DAO.kw60000U4100Delete(contentId);
	}
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return kw60000U4100DAO.getBoardListCnt(search);
	}
	
	@Override
	public List<KW60000VO> selectList(SearchHndlr search) throws Exception {
		List<KW60000VO> result = kw60000U4100DAO.selectkw60000U4100List(search);
		return result;
	}
	
	/*		
	@Override
	public NoticeVO kw60000U4100View(int contentId)  throws Exception {
	
		return kw60000U4100DAO.kw60000U4100View(contentId);
	}
	

	
	@Override
	public void kw60000U4100Update(NoticeVO kw60000U4100Vo) throws Exception {
	
		kw60000U4100DAO.kw60000U4100Update(kw60000U4100Vo);
	}
	

	*/
	
	
}
