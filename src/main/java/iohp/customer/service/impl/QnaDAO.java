package iohp.customer.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;

@Repository("QnaDAO")
public class QnaDAO extends EgovComAbstractDAO {

	public List<CustomerVO> selectList(SearchHndlr search) throws Exception {
		return selectList("qna073.selectQnaList", search);
	}
	
	public List<CustomerVO> selectRplyList(int contentId) throws Exception {
		return selectList("qna073.selectRplyList", contentId);
	}
	
	public void qnaInsert(CustomerVO customerVO) {
		insert("qna073.qnaInsert", customerVO);
	}
	
	public int qnaRplyInsert(CustomerVO customerVO) {
		return insert("qna073.qnaRplyInsert", customerVO);
	}

	public int count() throws Exception {
		return selectOne("qna073.count");
	}

	public CustomerVO qnaView(int contentId) {
		return selectOne("qna073.qnaView", contentId);
	}

	public CustomerVO qnaUpdateForm(int contentId) {
		return selectOne("qna073.qnaView", contentId);
	}

	public void qnaUpdate(CustomerVO customerVO) {
		update("qna073.qnaUpdate", customerVO);
	}

	public void qnaRplyDelete(CustomerVO customerVO) {
		delete("qna073.qnaRplyDelete", customerVO);
	}
	
	public int qnaDelete(CustomerVO customerVO) {
		return delete("qna073.qnaDelete", customerVO);
	}
	
	public void qnaRplyDeleteAll(CustomerVO customerVO) {
		delete("qna073.qnaRplyDeleteAll", customerVO);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("qna073.getBoardListCnt", search);
	}
	
	//댓글 게시글 개수 확인
	public int getRplytCnt(SearchHndlr search) throws Exception {
		return selectOne("qna073.rplyCount", search);
	}
		
	//조회수 증가
	public void cntUpdate(int contentId) {	
		update("qna073.cntUpdate", contentId);
	}	
	
	public int chkPw(CustomerVO customerVO) throws Exception {
		return selectOne("qna073.idChkCnt", customerVO);
	}
}
