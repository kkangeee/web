package iohp.page.KW10000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW10000.service.KW10000U1100VO;

@Repository("KW10000U1100DAO")
public class KW10000U1100DAO extends EgovComAbstractDAO {
		
	public List<KW10000U1100VO> selectList(KW10000U1100VO kw10000u1100VO) throws Exception {
		return selectList("kw10000u1100.page1100List", kw10000u1100VO);
	}
	
	
}
