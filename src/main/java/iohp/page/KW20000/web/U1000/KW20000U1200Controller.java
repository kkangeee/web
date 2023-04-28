package iohp.page.KW20000.web.U1000;

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
import iohp.page.KW20000.service.KW20000U1200Service;
import iohp.page.KW20000.service.KW20000U1200VO;

@RequestMapping("/page/KW20000")
@Controller
public class KW20000U1200Controller {
	@Resource(name = "KW20000U1200Service")
	private KW20000U1200Service kw20000u1200Service;

	@RequestMapping("/KW20000U1200.do")
	public String KW20000U1200pageList(Model model) throws Exception {
		model.addAttribute("act", "KW20000U0000");
		model.addAttribute("act2", "KW20000U1000");
		model.addAttribute("act3", "KW20000U1200");
		return "page/KW20000/KW20000U1200";
	}

	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW20000U1200selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW20000U1200List(
			// 페이징처리
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range
			// 검색키워드
			, @RequestParam(required = false, defaultValue = "keyword") String searchType,
			@RequestParam(required = false) String keyword, @ModelAttribute("search") SearchHndlr search,
			KW20000U1200VO kw20000u1200vo, HttpSession session) throws Exception {

		HashMap<String, Object> result = new HashMap<>();

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호
		Paging paging = new Paging();

		if (popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw20000u1200Service.KW20000U1200selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw20000u1200Service.KW20000U1200selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		}

		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw20000u1200Service.KW20000U1200select(search));
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW20000U1200delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW20000U1200delete(@ModelAttribute("kw20000u1200vo") KW20000U1200VO kw20000u1200vo,
			HttpServletRequest request, HttpSession session) throws Exception {
		String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호

		if (popBzRgstNo == null) {
			kw20000u1200vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw20000u1200vo.setBzRgstNo(popBzRgstNo);
		}

		// 배열에 담아준다.
		JSONArray jsonArray = new JSONArray(jsonS);

		int cnt = 0;
		// 삭제
		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);
			cnt += kw20000u1200Service.KW20000U1200delete(kw20000u1200vo);
		}

	}

}
