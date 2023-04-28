package iohp.customer.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.customer.service.CustomerVO;
import iohp.customer.service.QnaService;

@Service("QnaService")
public class QnaServiceImpl implements QnaService {

	@Resource(name = "QnaDAO")
	private QnaDAO qnaDAO;
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return qnaDAO.getBoardListCnt(search);
	}
	
	@Override
	public void qnaInsert(CustomerVO customerVO) throws Exception {
		qnaDAO.qnaInsert(customerVO);
	}
	
	@Override
	public void qnaRplyInsert(CustomerVO customerVO) throws Exception {
		qnaDAO.qnaRplyInsert(customerVO);
	}
	
	@Override
	public CustomerVO qnaView(int contentId) throws Exception {
		qnaDAO.cntUpdate(contentId);
		return qnaDAO.qnaView(contentId);
	}
	
	@Override
	public CustomerVO qnaUpdateForm(int contentId) throws Exception {
		return qnaDAO.qnaUpdateForm(contentId);
	}

	@Override
	public void qnaUpdate(CustomerVO qnaVo) throws Exception {
		qnaDAO.qnaUpdate(qnaVo);
	}

	@Override
	public void qnaRplyDelete(CustomerVO customerVO) throws Exception {
		qnaDAO.qnaRplyDelete(customerVO);
	}
	
	@Override
	public List<CustomerVO> selectRplyList(int contentId) throws Exception {	
		return qnaDAO.selectRplyList( contentId);
	}
	
	@Override
	public int getRplytCnt(SearchHndlr search) throws Exception {
		return qnaDAO.getRplytCnt(search);
	}
	
	@Override
	public boolean qnaDelete(CustomerVO customerVO) throws Exception {
		qnaDAO.qnaRplyDeleteAll(customerVO);
		int delVal = qnaDAO.qnaDelete(customerVO);
		if(delVal != 0) {
			return true; 
		} else {
			return false;
		}
	}
	
	@Override
	public List<CustomerVO> selectList(SearchHndlr search) throws Exception {
		List<CustomerVO> result = qnaDAO.selectList(search);
		return result;
	}
	
	@Override
	public boolean chkPw(CustomerVO customerVO) throws Exception {
		if(qnaDAO.chkPw(customerVO) > 0){
			return true;
		}else {
			return false;
		}
		
	}
	

}
