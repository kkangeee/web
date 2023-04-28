package iohp.com.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.com.service.CommonPopVO;


 
@Repository("CommonPopDAO")
public class CommonPopDAO extends EgovComAbstractDAO {
	
	public List<CommonPopVO> selectList(SearchHndlr search) {
		return selectList("CommonPop.selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("CommonPop.getBoardListCnt", search);
	}
	
		
}
