package iohp.customer.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface QnaService {

	/**
	 * 공지사항 리스트
	 * 
	 * @param CustomerVO
	 * @return List<CustomerVO>
	 */
	
	public List<CustomerVO> selectList(SearchHndlr search) throws Exception;     /* 게시판 - 리스트 출력*/	
	
	public List<CustomerVO> selectRplyList(int contentId) throws Exception; /* 댓글- 리스트 출력*/
	
	public int getBoardListCnt(SearchHndlr search) throws Exception; 
	
	public int getRplytCnt(SearchHndlr search) throws Exception; 
	
	void qnaInsert(CustomerVO customerVO) throws Exception;
	
	void qnaRplyInsert(CustomerVO customerVO) throws Exception;              /* 댓글입력*/
	
	CustomerVO qnaView(int contentId) throws Exception;
	
	CustomerVO qnaUpdateForm(int contentId) throws Exception;
	
	void qnaUpdate(CustomerVO customerVO) throws Exception;
	
	void qnaRplyDelete(CustomerVO customerVO) throws Exception;

	boolean qnaDelete(CustomerVO customerVO) throws Exception;
	
	boolean chkPw(CustomerVO customerVO) throws Exception;
	
}
