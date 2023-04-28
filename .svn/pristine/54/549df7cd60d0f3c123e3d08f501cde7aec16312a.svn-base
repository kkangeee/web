package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW30000.service.KW30000U5000VO;

@Repository("KW30000U5120DAO")
public class KW30000U5120DAO extends EgovComAbstractDAO {
	
	public List<KW30000U5000VO> KW30000U5120selectList(SearchHndlr search) throws Exception{
		return selectList("kw30000u5120.page5120selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u5120.getBoardListCnt", search);
		}
		

}
