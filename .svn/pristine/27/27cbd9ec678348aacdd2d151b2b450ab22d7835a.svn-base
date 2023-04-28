package iohp.customer.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import iohp.customer.service.FaqService;
import iohp.customer.service.CustomerVO;



@Service("FaqService")
public class FaqServiceImpl implements FaqService{

	@Resource(name="FaqDAO")
	private FaqDAO faqDAO;

	@Override
	public List<CustomerVO> selectFaqList(CustomerVO customerVO) throws Exception {
		return faqDAO.selectFaqList(customerVO);
	}
	
	@Override
	public void faqInsert(CustomerVO customerVO) throws Exception {
		faqDAO.faqInsert(customerVO);
	}
	
	@Override
	public CustomerVO faqUpdateForm(int contentId) throws Exception {
		return faqDAO.faqUpdateForm(contentId);
	}

	@Override
	public void faqUpdate(CustomerVO faqVo) throws Exception {
		faqDAO.faqUpdate(faqVo);
	}	
	
	@Override
	public void faqDelete(int contentId) throws Exception {
		faqDAO.faqDelete(contentId);
	}
	
	/*		
	@Override
	public NoticeVO noticeView(int contentId)  throws Exception {
	
		return noticeDAO.noticeView(contentId);
	}
	

	
	@Override
	public void noticeUpdate(NoticeVO noticeVo) throws Exception {
	
		noticeDAO.noticeUpdate(noticeVo);
	}
	

	*/
	
	
}
