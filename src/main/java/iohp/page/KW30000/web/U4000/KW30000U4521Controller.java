package iohp.page.KW30000.web.U4000;

import java.util.HashMap;

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

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U4521Controller {

	/**
	 * 기본 정보 관리
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/KW30000U4521.do")
	public String notice_list(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U4521";
	}

	/*
	 * Ajax 조회
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/KW30000U4521selectList", produces =
	 * "application/json") public ResponseEntity<HashMap<String, Object>>
	 * KW30000U1173List( // 검색키워드
	 * 
	 * @RequestParam(required = false, defaultValue = "keyword") String searchType,
	 * 
	 * @RequestParam(required = false) String keyword, @ModelAttribute("search")
	 * SearchHndlr search, HttpSession session) throws Exception {
	 * 
	 * HashMap<String, Object> result = new HashMap<>();
	 * 
	 * // 세션값 가져오기 LoginVO authUser = (LoginVO) session.getAttribute("authUser"); //
	 * 로그인 정보 String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); //
	 * 검색사업자번호
	 * 
	 * if (popBzRgstNo == null) { search.setSearchBzRgstNo(authUser.getBzRgstNo());
	 * } else { search.setSearchBzRgstNo(popBzRgstNo); }
	 * 
	 * // 게시글 화면 출력 //result.put("resultList",
	 * kw30000u1173Service.KW30000U1173select(search));
	 * 
	 * return ResponseEntity.ok(result); }
	 */

}
