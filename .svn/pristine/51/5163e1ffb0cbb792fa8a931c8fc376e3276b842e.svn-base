package iohp.page.KW10000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import iohp.page.KW10000.service.KW10000U1100Service;
import iohp.page.KW10000.service.KW10000U1100VO;

@Service("KW10000U1100Service")
public class KW10000U1100Servicelmpl implements KW10000U1100Service {
	
	@Resource(name="KW10000U1100DAO")
	private KW10000U1100DAO kw10000u1100DAO;

	@Override
	public List<KW10000U1100VO> selectList(KW10000U1100VO kw10000u1100VO) throws Exception {		
		return kw10000u1100DAO.selectList(kw10000u1100VO);
	}

}
