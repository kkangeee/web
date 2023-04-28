package iohp.page.KW10000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW10000.service.KW10000U2100Service;
import iohp.page.KW10000.service.KW10000U2100VO;

@Service("KW10000U2100Service")
public class KW10000U2100ServiceImpl implements KW10000U2100Service {

	@Resource(name = "KW10000U2100DAO")
	private KW10000U2100DAO kw10000u2100DAO;

	/* 조회 */
	@Override
	public List<KW10000U2100VO> KW10000U2100select(SearchHndlr search) throws Exception {
		System.out.println(search);
		return kw10000u2100DAO.KW10000U2100selectList(search);
	}
	
	/* 팝업조회 */
	@Override
	public List<KW10000U2100VO> KW10000U2100popSelect(SearchHndlr search) throws Exception {
		
		return kw10000u2100DAO.KW10000U2100popSelect(search);
	}

	/* 단위사업체 조회 */
	public List<KW10000U2100VO> KW10000U2100PrcsNm(SearchHndlr search) throws Exception{
		return kw10000u2100DAO.KW10000U2100PrcsNm(search);
	}
	
	/* 공정명 */
	public List<KW10000U2100VO> KW10000U2100UnitCoNm(SearchHndlr search) throws Exception{
		return kw10000u2100DAO.KW10000U2100UnitCoNm(search);
	}
	
	/* 조회 개수 */
	@Override
	public int KW10000U2100selectCnt(SearchHndlr search) throws Exception {
		return kw10000u2100DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW10000U2100delete(KW10000U2100VO kw10000u2100vo) throws Exception {
		return kw10000u2100DAO.KW10000U2100delete(kw10000u2100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW10000U2100insertSave(KW10000U2100VO kw10000u2100vo) throws Exception { 
		 return kw10000u2100DAO.KW10000U2100insertSave(kw10000u2100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW10000U2100updateSave(KW10000U2100VO kw10000u2100vo) throws Exception { 
		 return kw10000u2100DAO.KW10000U2100updateSave(kw10000u2100vo); 
	}
	 
	 


}
