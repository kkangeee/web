package iohp.page.KW10000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW10000.service.KW10000U1200VO;

@Repository("KW10000U1200DAO")
public class KW10000U1200DAO extends EgovComAbstractDAO {
		
	public List<KW10000U1200VO> KW10000U1200List(SearchHndlr search) throws Exception {
		return selectList("kw10000u1200.page1200selectList", search);
	}
	
	public int getBoardListCnt(SearchHndlr search) throws Exception{
		return selectOne("kw10000u1200.getBoardListCnt", search);
	}
	
}
