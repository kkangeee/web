package iohp.customer.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;

@Repository("PopupDAO")
public class PopupDAO extends EgovComAbstractDAO {

	public List<CustomerVO> selectList(SearchHndlr search) throws Exception {
		return selectList("popup074.selectPopupList", search);
	}
	
	public CustomerVO popupView(int contentId) {
		return selectOne("popup074.popupView", contentId);
	}
														
	public void popupInsert(CustomerVO customerVO) {		
		insert("popup074.popupInsert", customerVO);
	}
	
	public CustomerVO popupUpdateForm(int popupId) {
		return selectOne("popup074.popupUpdateForm", popupId);
	}
	
	public void popupUpdate(CustomerVO customerVO) {
		update("popup074.popupUpdate", customerVO);
	}
	
	public void popupDelete(int popupId) {
		delete("popup074.popupDelete", popupId);
	}
	
	//총 게시글 개수 확인
	public int getPopupListCnt(SearchHndlr search) throws Exception {
		return selectOne("popup074.getPopupListCnt", search);
	}
	
	//조회수 증가
	public void cntUpdate(int contentId) {	
		update("popup074.cntUpdate", contentId);
	}
	

}
