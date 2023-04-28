package iohp.page.KW90000.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW90000.service.KW90000U3100VO;
import iohp.page.KW90000.service.KW90000U3100VO;
import iohp.page.KW90000.service.KW90000U5100Service;
 
@Service("KW90000U5100Service")
public class KW90000U5100ServiceImpl implements KW90000U5100Service {

	@Resource(name = "KW90000U5100DAO")
	private KW90000U5100DAO kw90000u5100DAO;
  
	@Override
	public List<KW90000U3100VO> KW90000U5100select(KW90000U3100VO kw90000u3100vo) throws Exception {		
		return kw90000u5100DAO.KW90000U5100select(kw90000u3100vo);
	}
	

}
