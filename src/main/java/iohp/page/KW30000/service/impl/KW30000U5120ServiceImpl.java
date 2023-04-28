package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5120Service;

@Service("KW30000U5120Service")
public class KW30000U5120ServiceImpl implements KW30000U5120Service{
	
	@Resource(name="KW30000U5120DAO")
	private KW30000U5120DAO kw30000u5120DAO;
	@Override
	public List<KW30000U5000VO> KW30000U5120select(SearchHndlr search) throws Exception {
		
		List<KW30000U5000VO> result = kw30000u5120DAO.KW30000U5120selectList(search);
		return result;
	}

	@Override
	public int KW30000U5120selectCnt(SearchHndlr search) throws Exception {
		return kw30000u5120DAO.getBoardListCnt(search);
	}

}
