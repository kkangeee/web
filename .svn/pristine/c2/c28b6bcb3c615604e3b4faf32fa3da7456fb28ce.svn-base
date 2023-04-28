package iohp.page.KW50000.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW50000.service.KW50000U1100Service;
import iohp.page.KW50000.service.KW50000U1100VO;

@Service("KW50000U1100Service")
public class KW50000U1100ServiceImpl implements KW50000U1100Service {

	@Resource(name = "KW50000U1100DAO")
	private KW50000U1100DAO kw50000u1100DAO;

	/* 조회 */
	@Override
	public List<KW50000U1100VO> KW50000U1100Select(SearchHndlr search) throws Exception{
		return kw50000u1100DAO.KW50000U1100SelectList(search);
	}
	/* 입력 */
	@Override
	public int KW50000U1100Insert(KW50000U1100VO kw50000u1100vo) throws Exception {
		return kw50000u1100DAO.KW50000U1100Insert(kw50000u1100vo);
	}
	
	/* 삭제 */
	@Override
	public int KW50000U1100Delete(KW50000U1100VO kw50000u1100vo) throws Exception {
		return kw50000u1100DAO.KW50000U1100Delete(kw50000u1100vo);
	}

	/* 상세보기 */
	@Override
	public KW50000U1100VO KW50000U1100View(KW50000U1100VO kw50000u1100vo) throws Exception {
		return kw50000u1100DAO.KW50000U1100View(kw50000u1100vo);
	}

	/* 수정 */
	@Override
	public int KW50000U1100Update(KW50000U1100VO kw50000u1100vo) throws Exception {
		return kw50000u1100DAO.KW50000U1100Update(kw50000u1100vo);
	}
	
}
