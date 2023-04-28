package iohp.mypage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.mypage.service.KW80000U1100Service;
import iohp.mypage.service.KW80000U1100VO;

@Service("KW80000U1100Service")
public class KW80000U1100ServiceImpl implements KW80000U1100Service {

	@Resource(name = "KW80000U1100DAO")
	private KW80000U1100DAO kw80000u1100DAO;
  
	/* 조회 */
	@Override
	public List<KW80000U1100VO> KW80000U1100select(SearchHndlr search) throws Exception {
		List<KW80000U1100VO> result = kw80000u1100DAO.KW80000U1100selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW80000U1100selectCnt(SearchHndlr search) throws Exception {
		return kw80000u1100DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW80000U1100delete(KW80000U1100VO kw80000u1100vo) throws Exception {
		return kw80000u1100DAO.KW80000U1100delete(kw80000u1100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW80000U1100insertSave(KW80000U1100VO kw80000u1100vo) throws Exception { 
		 return kw80000u1100DAO.KW80000U1100insertSave(kw80000u1100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW80000U1100updateSave(KW80000U1100VO kw80000u1100vo) throws Exception { 
		 return kw80000u1100DAO.KW80000U1100updateSave(kw80000u1100vo); 
	}
	 
	 


}
