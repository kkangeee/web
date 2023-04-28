package iohp.customer.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
 
@Repository("FaqDAO")
public class FaqDAO extends EgovComAbstractDAO {
	
	public List<CustomerVO> selectFaqList(CustomerVO customerVO) {
		return selectList("faq072.selectFaqList", customerVO);
	}
	
	public void faqInsert(CustomerVO customerVO) {
		 insert("faq072.faqInsert", customerVO);
	}
	
	public CustomerVO faqUpdateForm(int contentId) {
		return selectOne("faq072.faqUpdateForm", contentId);
	}
	
	public void faqUpdate(CustomerVO customerVO) {
		 update("faq072.faqUpdate", customerVO);
	}
	
	public void faqDelete(int contentId) {
		 delete("faq072.faqDelete", contentId);
	}

/*	
	public NoticeVO noticeView(int contentId) {
		return selectOne("notice071.noticeView", contentId);
	}
	
	public void noticeUpdate(NoticeVO noticeVO) {
		 update("notice071.noticeUpdate", noticeVO);
	}
	
	public void noticeDelete(int contentId) {

		 delete("notice071.noticeDelete", contentId);
	}
*/
	
	
}
