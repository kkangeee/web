package iohp.page.KW10000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW10000.service.KW10000U1200Service;
import iohp.page.KW10000.service.KW10000U1200VO;

@Service("KW10000U1200Service")
public class KW10000U1200Servicelmpl implements KW10000U1200Service {
	
	@Resource(name="KW10000U1200DAO")
	private KW10000U1200DAO kw10000u1200DAO;

	@Override
	public List<KW10000U1200VO> KW10000U1200List(SearchHndlr search) throws Exception {		
		return kw10000u1200DAO.KW10000U1200List(search);
	}
	
	@Override
	public int KW10000U1200selectCnt(SearchHndlr search) throws Exception {
		return kw10000u1200DAO.getBoardListCnt(search);
	}

}
