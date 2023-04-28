package iohp.com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.SearchHndlr;
import iohp.com.service.CommonPopService;
import iohp.com.service.CommonPopVO;




@Service("CommonPopService")
public class CommonPopServiceImpl implements CommonPopService{

	@Resource(name="CommonPopDAO")
	private CommonPopDAO commonPopDAO;

	@Override
	public List<CommonPopVO> selectList(SearchHndlr search) throws Exception {
		return commonPopDAO.selectList(search);
	}
	
	@Override
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return commonPopDAO.getBoardListCnt(search);
	}

		
	
}
