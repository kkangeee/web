package iohp.page.KW90000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW90000.service.KW90000U3100VO;

@Repository("KW90000U5100DAO")
public class KW90000U5100DAO extends EgovComAbstractDAO {
	
	
	public List<KW90000U3100VO> KW90000U5100select(KW90000U3100VO kw90000u3100VO) throws Exception {
		return selectList("kw90000u5100.page5100selectList", kw90000u3100VO);
	}
	 
	
}
