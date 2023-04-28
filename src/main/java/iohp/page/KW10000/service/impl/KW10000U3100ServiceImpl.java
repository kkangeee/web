package iohp.page.KW10000.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sun.mail.imap.protocol.Item;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW10000.service.KW10000U3100Service;
import iohp.page.KW10000.service.KW10000U3100VO;

@Service("KW10000U3100Service")
public class KW10000U3100ServiceImpl implements KW10000U3100Service {

	@Resource(name = "KW10000U3100DAO")
	private KW10000U3100DAO kw10000u3100DAO;

	/*
	 * @Override public List<KW10000U3100VO> KW10000U3100pageList(KW10000U3100VO
	 * kw10000u3100vo) throws Exception { System.out.println("ddddddddddddddddddddd"
	 * + kw10000u3100vo); return
	 * kw10000u3100DAO.KW10000U3100pageList(kw10000u3100vo); }
	 */
  
	/* 리스트조회 */
	@Override
	public List<KW10000U3100VO> KW10000U3100select(SearchHndlr search) throws Exception {
		List<KW10000U3100VO> result = kw10000u3100DAO.KW10000U3100selectList(search);
		return result;
	}
	
	/* 팝업조회 */
	@Override
	public List<KW10000U3100VO> KW10000U3100popSelect(SearchHndlr search) throws Exception {
		List<KW10000U3100VO> result = kw10000u3100DAO.KW10000U3100popSelect(search);
		return result;
	}
	
	/* 팝업조회 */
	@Override
	public List<KW10000U3100VO> KW10000U3100selectUnitCoNm(SearchHndlr search) throws Exception {
		List<KW10000U3100VO> coNmResult = kw10000u3100DAO.KW10000U3100selectUnitCoNm(search);
		return coNmResult;
	}
	
	@Override
	public List<KW10000U3100VO> KW10000U3100selectPrcsNm(SearchHndlr search) throws Exception {
		List<KW10000U3100VO> prcsNmResult = kw10000u3100DAO.KW10000U3100selectPrcsNm(search);
		return prcsNmResult;
	}
	
	/* 조회 개수 */
	@Override
	public int KW10000U3100selectCnt(SearchHndlr search) throws Exception {
		return kw10000u3100DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW10000U3100delete(KW10000U3100VO kw10000u3100vo) throws Exception {
		return kw10000u3100DAO.KW10000U3100delete(kw10000u3100vo);
	}

	/* 추가 */
	 @Override 
	 @Transactional
	 public int KW10000U3100insertSave(KW10000U3100VO kw10000u3100vo) throws Exception { 		 
		 return kw10000u3100DAO.KW10000U3100insertSave(kw10000u3100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW10000U3100updateSave(KW10000U3100VO kw10000u3100vo) throws Exception { 
		 return kw10000u3100DAO.KW10000U3100updateSave(kw10000u3100vo); 
	}
	 
	 


}
