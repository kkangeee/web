package iohp.page.KW30000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5110Service;

@Service("KW30000U5110Service")
public class KW30000U5110ServiceImpl implements KW30000U5110Service{
	
	@Resource(name="KW30000U5110DAO")
	private KW30000U5110DAO kw30000u5110DAO;
	@Override
	public List<KW30000U5000VO> KW30000U5110select(SearchHndlr search) throws Exception {
		List<KW30000U5000VO> result = kw30000u5110DAO.KW30000U5110selectList(search);
		return result;
	}

	@Override
	public int KW30000U5110selectCnt(SearchHndlr search) throws Exception {
		return kw30000u5110DAO.getBoardListCnt(search);
	}

}
