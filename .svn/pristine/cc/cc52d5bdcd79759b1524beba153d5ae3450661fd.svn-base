package iohp.join.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import iohp.join.service.JoinService;
import iohp.join.service.JoinVO;



@Service("JoinService")
public class JoinServiceImpl implements JoinService{

	@Resource(name="JoinDAO")
	private JoinDAO joinDAO;
	
	@Override 
	public void joinPersonalInsert(JoinVO joinVO) throws Exception {
		  joinDAO.joinPersonalInsert(joinVO); 
	}
	
	@Override 
	public void joinCompanyInsert(JoinVO joinVO) throws Exception {
		  joinDAO.joinCompanyInsert(joinVO); 
	}
	
	public boolean idCheck(String userId) throws Exception{
		
		int count = joinDAO.joinIdCheck(userId);
		
		if(count>0) {
			return false;
		}else {
			return true;
		}   
	}

	/*
	 * @Override public List<FaqVO> selectFaqList(FaqVO faqVO) throws Exception {
	 * 
	 * return faqDAO.selectFaqList(faqVO); }
	 * 
	 * @Override public void faqInsert(FaqVO faqVO) throws Exception {
	 * 
	 * faqDAO.faqInsert(faqVO); }
	 * 
	 * @Override public FaqVO faqUpdateForm(int contentId) throws Exception {
	 * 
	 * return faqDAO.faqUpdateForm(contentId); }
	 * 
	 * @Override public void faqUpdate(FaqVO faqVo) throws Exception {
	 * 
	 * faqDAO.faqUpdate(faqVo); }
	 * 
	 * @Override public void faqDelete(int contentId) throws Exception {
	 * 
	 * faqDAO.faqDelete(contentId); }
	 */
	
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
