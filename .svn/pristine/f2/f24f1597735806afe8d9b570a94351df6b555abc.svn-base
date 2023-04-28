package iohp.customer.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.customer.service.CustomerVO;
import iohp.customer.service.NoticeService;

@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {

	@Resource(name = "NoticeDAO")
	private NoticeDAO noticeDAO;

	@Override
	public CustomerVO noticeView(int contentId) throws Exception {
		noticeDAO.cntUpdate(contentId);
		return noticeDAO.noticeView(contentId);
	}
	
	@Override
	public void noticeInsert(CustomerVO customerVO) throws Exception {
		noticeDAO.noticeInsert(customerVO);
	}
	
	@Override
	public CustomerVO noticeUpdateForm(int contentId) throws Exception {
		return noticeDAO.noticeUpdateForm(contentId);
	}
	
	@Override
	public void noticeUpdate(CustomerVO customerVO) throws Exception {
		noticeDAO.noticeUpdate(customerVO);
	}
	
	@Override
	public void noticeDelete(int contentId) throws Exception {
		noticeDAO.noticeDelete(contentId);
	}
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return noticeDAO.getBoardListCnt(search);
	}
	
	@Override
	public List<CustomerVO> selectList(SearchHndlr search) throws Exception {
		List<CustomerVO> result = noticeDAO.selectList(search);
		return result;
	}
			
}
