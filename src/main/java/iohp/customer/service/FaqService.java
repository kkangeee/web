package iohp.customer.service;

import java.util.List;

public interface FaqService {
	
	/**
	 * 자주하는 문의
	 * 
	 * @param CustomerVO
	 * @return List<CustomerVO>
	 	
	*/
	public List<CustomerVO> selectFaqList(CustomerVO customerVO) throws Exception;
	
	public void faqInsert(CustomerVO customerVO) throws Exception;
	
	public CustomerVO faqUpdateForm(int contentId) throws Exception;
	
	public void faqUpdate(CustomerVO customerVO) throws Exception;
	
	public void faqDelete(int contentId) throws Exception;
	
	
}
