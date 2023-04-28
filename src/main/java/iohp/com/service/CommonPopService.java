package iohp.com.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;



public interface CommonPopService {

	/**
	 * 팝업 리스트
	 * 
	 * @param CommonPopVO
	 * @return List<CommonPopVO>
	 */
	
	public List<CommonPopVO> selectList(SearchHndlr search) throws Exception;     /* 팝업 - 리스트 출력*/	
		
 	public int getBoardListCnt(SearchHndlr search) throws Exception;              /* 팝업 - 총 게시글수*/	
		
 	
}
