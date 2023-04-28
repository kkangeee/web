package iohp.customer.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;

@Repository("NoticeDAO")
public class NoticeDAO extends EgovComAbstractDAO {

	public List<CustomerVO> selectList(SearchHndlr search) throws Exception {
		return selectList("notice071.selectNoticeList", search);
	}
	
	public CustomerVO noticeView(int contentId) {
		return selectOne("notice071.noticeView", contentId);
	}
														
	public void noticeInsert(CustomerVO customerVO) {		
		insert("notice071.noticeInsert", customerVO);
	}
	
	public CustomerVO noticeUpdateForm(int contentId) {
		return selectOne("notice071.noticeUpdateForm", contentId);
	}
	
	public void noticeUpdate(CustomerVO customerVO) {
		update("notice071.noticeUpdate", customerVO);
	}
	
	public void noticeDelete(int contentId) {
		delete("notice071.noticeDelete", contentId);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("notice071.getBoardListCnt", search);
	}
	
	//조회수 증가
	public void cntUpdate(int contentId) {	
		update("notice071.cntUpdate", contentId);
	}
	

}
