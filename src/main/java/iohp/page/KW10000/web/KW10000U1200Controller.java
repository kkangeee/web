package iohp.page.KW10000.web;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW10000.service.KW10000U1200Service;

@RequestMapping("/page/KW10000")
@Controller
public class KW10000U1200Controller {
	
	@Resource(name = "KW10000U1200Service")
	private KW10000U1200Service kw10000u1200Service;
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	
	@RequestMapping("/KW10000U1200.do")
	public String KW10000U1300pageList(Model model) throws Exception {
		model.addAttribute("act", "KW10000U0000");
		model.addAttribute("act2", "KW10000U1000");
		return "page/KW10000/KW10000U1200";
	}
	
	@ResponseBody
	@RequestMapping("/KW10000U1200List")
	public ResponseEntity<HashMap<String, Object>> KW10000U1200List(SearchHndlr search, HttpSession session) throws Exception{
		
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		/*----------------*/
		
		Paging paging = new Paging();//페이징 객체 추가 
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw10000u1200Service.KW10000U1200selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw10000u1200Service.KW10000U1200selectCnt(search);		
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		}
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("pagination", paging);
		result.put("resultList", kw10000u1200Service.KW10000U1200List(search));
		
		return ResponseEntity.ok(result);		
			
	}
	
}
