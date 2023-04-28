package iohp.join.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.join.service.JoinVO;

@Repository("JoinDAO")
public class JoinDAO extends EgovComAbstractDAO {
	
	public void joinPersonalInsert(JoinVO joinVO) {
		 insert("join.joinPersonalInsert", joinVO);
	}
	
	public void joinCompanyInsert(JoinVO joinVO) {
		 insert("join.joinCompanyInsert", joinVO);
	}
	
	public int joinIdCheck(String userId) {
		return selectOne("join.joinIdCheck", userId);
	}
	
}
