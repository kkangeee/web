package iohp.page.KW10000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW10000.service.KW10000U1300Service;
import iohp.page.KW10000.service.KW10000U1300VO;

@Service("KW10000U1300Service")
public class KW10000U1300ServiceImpl implements KW10000U1300Service {

	@Resource(name = "KW10000U1300DAO")
	private KW10000U1300DAO kw10000u1300DAO;
  
	/* 조회 */
	@Override
	public List<KW10000U1300VO> KW10000U1300select(SearchHndlr search) throws Exception {
		return kw10000u1300DAO.KW10000U1300selectList(search);
	}
	
	/* 조회 개수 */
	@Override
	public int KW10000U1300selectCnt(SearchHndlr search) throws Exception {
		return kw10000u1300DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW10000U1300delete(KW10000U1300VO kw10000u1300vo) throws Exception {
		return kw10000u1300DAO.KW10000U1300delete(kw10000u1300vo);
	}

	/* 추가 */
	 @Override 
	 public int KW10000U1300insertSave(KW10000U1300VO kw10000u1300vo) throws Exception { 
		 return kw10000u1300DAO.KW10000U1300insertSave(kw10000u1300vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW10000U1300updateSave(KW10000U1300VO kw10000u1300vo) throws Exception { 
		 return kw10000u1300DAO.KW10000U1300updateSave(kw10000u1300vo); 
	}
	 
	 


}
