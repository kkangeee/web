package iohp.page.KW30000.web.U2000;

import java.sql.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U2330Service;
import iohp.page.KW30000.service.KW30000U2330VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U2330Controller {
	@Resource(name = "KW30000U2330Service")
	private KW30000U2330Service kw30000u2330Service; 
	
	@RequestMapping("/KW30000U2330.do")
	public String KW30000U2330pageList(@ModelAttribute("kw30000u2330vo") KW30000U2330VO kw30000u2330vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000U2330");
		return "page/KW30000/KW30000U2330";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U2330selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U2330List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search
			,KW30000U2330VO kw30000u2330vo, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		//세션값 가져오기
				LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
				String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
				Paging paging = new Paging();
				
				if(popBzRgstNo == null) {
					search.setSearchBzRgstNo(authUser.getBzRgstNo());
					int listCnt = kw30000u2330Service.KW30000U2330selectCnt(search);
					paging.setCri(search);
			        paging.setTotalCount(listCnt);
				} else {
					search.setSearchBzRgstNo(popBzRgstNo);
					int listCnt = kw30000u2330Service.KW30000U2330selectCnt(search);
					paging.setCri(search);
			        paging.setTotalCount(listCnt);
				}
				
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw30000u2330Service.KW30000U2330select(search));
		return ResponseEntity.ok(result);
	}
}