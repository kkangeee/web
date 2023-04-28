package iohp.page.KW30000.web.U5000;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U5110Service;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U5110Controller {

	@Resource(name = "KW30000U5110Service")
	private KW30000U5110Service kw300000u5110Service;

	/**
	 * 기본 정보 관리
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/KW30000U5110.do")
	public String KW30000U5110Do(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000U5000");
		model.addAttribute("act2", "KW30000U1100");
		return "page/KW30000/KW30000U5110";
	}

	/* Ajax 리스트 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U5110selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U5110List(
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "keyword") String searchType,
			@RequestParam(required = false) String keyword, 
			@ModelAttribute("search") SearchHndlr search,
			HttpSession session) throws Exception {

		HashMap<String, Object> result = new HashMap<>();
			
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			// 전체 게시글 개수를 얻어와 listCnt에 저장
			int listCnt = kw300000u5110Service.KW30000U5110selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			// 전체 게시글 개수를 얻어와 listCnt에 저장
			int listCnt = kw300000u5110Service.KW30000U5110selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw300000u5110Service.KW30000U5110select(search));

		return ResponseEntity.ok(result);
	}

}
