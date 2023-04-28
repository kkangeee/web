package iohp.customer.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;

public interface NoticeService {

	/**
	 * 공지사항 리스트
	 * 
	 * @param CustomerVO
	 * @return List<CustomerVO>
	 */	
	
	
	public List<CustomerVO> selectList(SearchHndlr search) throws Exception;     /* 게시판 - 리스트 출력*/	
	public int getBoardListCnt(SearchHndlr search) throws Exception;             /* 총게시글 수*/	
	public CustomerVO noticeView(int contentId) throws Exception;                   /* 제목 클릭 시 상세보기 - 글상세보기*/	
	public void noticeInsert(CustomerVO customerVO) throws Exception;               /* 글쓰기 - 확인 */
	public CustomerVO noticeUpdateForm(int contentId) throws Exception;             /* 글 - 수정 폼 이동 */
	public void noticeUpdate(CustomerVO customerVO) throws Exception;               /* 글 - 수정 확인  */
	public void noticeDelete(int contentId) throws Exception;                       /* 글 - 삭제 */
							
	
	
	
	/*
	List<CustomerVO> getPage(Map map) throws Exception;
	
	int getCount() throws Exception;
	
	int getSearchResultCnt(SearchCondition sc) throws Exception;
	
	List<CustomerVO> getSearchResultPage(SearchCondition sc) throws Exception;
	*/
	
}
