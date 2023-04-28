package iohp.page.KW90000.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import iohp.page.KW90000.service.KW90000U3100Service;
import iohp.page.KW90000.service.KW90000U3100VO;
 
@Service("KW90000U3100Service")
public class KW90000U3100ServiceImpl implements KW90000U3100Service {

	@Resource(name = "KW90000U3100DAO")
	private KW90000U3100DAO kw90000u3100DAO;
  
	/* 조회 */
	@Override
	public List<KW90000U3100VO> KW90000U3100select(SearchHndlr search) throws Exception {
		List<KW90000U3100VO> result = kw90000u3100DAO.KW90000U3100selectList(search);
		return result;
	}
	
	/* 조회 개수 */
	@Override
	public int KW90000U3100selectCnt(SearchHndlr search) throws Exception {
		search.setTableNm("TB_KW50_ROLE_MENU_MPG");
		return kw90000u3100DAO.getBoardListCnt(search);
	}
	
	/* 삭제 */
	@Override
	public int KW90000U3100delete(KW90000U3100VO kw90000u3100vo) throws Exception {
		return kw90000u3100DAO.KW90000U3100delete(kw90000u3100vo);
	}

	/* 추가 */
	 @Override 
	 public int KW90000U3100insertSave(KW90000U3100VO kw90000u3100vo) throws Exception { 
		 return kw90000u3100DAO.KW90000U3100insertSave(kw90000u3100vo); 
	}
	 
	 /* 수정 */
	 @Override 
	 public int KW90000U3100updateSave(KW90000U3100VO kw90000u3100vo) throws Exception { 
		 return kw90000u3100DAO.KW90000U3100updateSave(kw90000u3100vo); 
	}
	 
	 


}
