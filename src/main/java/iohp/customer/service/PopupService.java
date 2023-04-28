package iohp.customer.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;

public interface PopupService {

	/**
	 * 팝업관리 리스트
	 * 
	 * @param CustomerVO
	 * @return List<CustomerVO>
	 */	
	
	
	public List<CustomerVO> selectList(SearchHndlr search) throws Exception;     	/* 게시판 - 리스트 출력*/	
	public int getPopupListCnt(SearchHndlr search) throws Exception;             	/* 총게시글 수*/	
	public CustomerVO popupView(int contentId) throws Exception;                   /* 제목 클릭 시 상세보기 - 글상세보기*/	
	public void popupInsert(CustomerVO customerVO) throws Exception;               /* 글쓰기 - 확인 */
	public CustomerVO popupUpdateForm(int contentId) throws Exception;             /* 글 - 수정 폼 이동 */
	public void popupUpdate(CustomerVO customerVO) throws Exception;               /* 글 - 수정 확인  */
	public void popupDelete(int contentId) throws Exception;                       /* 글 - 삭제 */
							
	
	
	
	/*
	List<CustomerVO> getPage(Map map) throws Exception;
	
	int getCount() throws Exception;
	
	int getSearchResultCnt(SearchCondition sc) throws Exception;
	
	List<CustomerVO> getSearchResultPage(SearchCondition sc) throws Exception;
	*/
	
}
