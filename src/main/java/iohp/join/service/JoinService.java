package iohp.join.service;

public interface JoinService {
	
	/**
	 * 자주하는 문의
	 * 
	 * @param CustomerVO
	 * @return List<CustomerVO>
	 	
	*/
	
	public void joinPersonalInsert(JoinVO joinVO) throws Exception;
	
	public void joinCompanyInsert(JoinVO joinVO) throws Exception;
	
	public boolean idCheck(String userId) throws Exception;
	/*
	 * public List<FaqVO> selectFaqList(FaqVO faqVO) throws Exception;
	 * 
	 * public void faqInsert(FaqVO faqVO) throws Exception;
	 * 
	 * public FaqVO faqUpdateForm(int contentId) throws Exception;
	 * 
	 * public void faqUpdate(FaqVO faqVO) throws Exception;
	 * 
	 * public void faqDelete(int contentId) throws Exception;
	 */
	
	
}
