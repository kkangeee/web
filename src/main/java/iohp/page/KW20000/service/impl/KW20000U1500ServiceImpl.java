package iohp.page.KW20000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW20000.service.KW20000U1500Service;
import iohp.page.KW20000.service.KW20000U1500VO;

@Service("KW20000U1500Service")
public class KW20000U1500ServiceImpl implements KW20000U1500Service {

	@Resource(name = "KW20000U1500DAO")
	private KW20000U1500DAO kw20000u1500DAO;
	
//	@Override
//	public List<CustomerVO> selectList(SearchHndlr search) throws Exception {		
//		return kw20000u1500DAODAO.selectList(search);
//	}

	@Override
	public KW20000U1500VO kw20000u1500View(int contentId) throws Exception {
		kw20000u1500DAO.cntUpdate(contentId);
		return kw20000u1500DAO.kw20000u1500View(contentId);
	}
	
	@Override
	public void kw20000u1500Insert(KW20000U1500VO kw20000u1500VO) throws Exception {
		kw20000u1500DAO.kw20000u1500Insert(kw20000u1500VO);
	}
	
	@Override
	public KW20000U1500VO kw20000u1500UpdateForm(int contentId) throws Exception {
		return kw20000u1500DAO.kw20000u1500UpdateForm(contentId);
	}
	
	@Override
	public void kw20000u1500Update(KW20000U1500VO kw20000u1500VO) throws Exception {
		kw20000u1500DAO.kw20000u1500Update(kw20000u1500VO);
	}
	
	@Override
	public void kw20000u1500Delete(int contentId) throws Exception {
		kw20000u1500DAO.kw20000u1500Delete(contentId);
	}
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return kw20000u1500DAO.getBoardListCnt(search);
	}
	
	@Override
	public List<KW20000U1500VO> kw20000u1500selectList(SearchHndlr search) throws Exception {
		return kw20000u1500DAO.kw20000u1500selectList(search);
	}
			
}
