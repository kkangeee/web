package iohp.page.KW30000.web.U1000;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Request;

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
import iohp.page.KW30000.service.KW30000U1173Service;
import iohp.page.KW30000.service.KW30000U1173VO;
import iohp.page.KW30000.service.KW30000U1173chkVO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U1173Controller {
	@Resource(name = "KW30000U1173Service")
	private KW30000U1173Service kw30000u1173Service;

	@RequestMapping("/KW30000U1173.do")
	public String KW30000U1173pageList(@ModelAttribute("kw30000u1173vo") KW30000U1173VO kw30000u1173vo, Model model,
			HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U1173";
	}

	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1173selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U1173List(
			// 페이징처리
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range
			// 검색키워드
			, @RequestParam(required = false, defaultValue = "keyword") String searchType,
			@RequestParam(required = false) String keyword, @ModelAttribute("search") SearchHndlr search,
			HttpSession session) throws Exception {

		HashMap<String, Object> result = new HashMap<>();

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호
		Paging paging = new Paging();

		if (popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw30000u1173Service.KW30000U1173selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u1173Service.KW30000U1173selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		}

		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw30000u1173Service.KW30000U1173select(search));

		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1173delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1173delete(@ModelAttribute("kw30000u1173vo") KW30000U1173VO kw30000u1173vo,
			HttpServletRequest request, HttpSession session) throws Exception {
		String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호

		if (popBzRgstNo == null) {
			kw30000u1173vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw30000u1173vo.setBzRgstNo(popBzRgstNo);
		}

		// 배열에 담아준다.
		JSONArray jsonArray = new JSONArray(jsonS);

		int cnt = 0;
		// 삭제
		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);

			kw30000u1173vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
			cnt += kw30000u1173Service.KW30000U1173delete(kw30000u1173vo);
		}

		// select 다시 실행
		// List<KW30000U1173VO> resultList1 =
		// kw30000u1173Service.KW30000U1173pageList(kw30000u1173vo);
		// 리턴을 안하고, ajax(jsp)에서 성공시, 다시 조회를 한다.
		// return resultList1;
	}

	/* Ajax 추가 & 저장 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1173save.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1173save(@ModelAttribute("kw30000u1173vo") KW30000U1173VO kw30000u1173vo, Model model,
			HttpServletRequest request, HttpSession session) throws Exception {

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호

		if (popBzRgstNo == null) {
			kw30000u1173vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw30000u1173vo.setBzRgstNo(popBzRgstNo);
		}

		String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		System.out.println("GGGGGGGGG" + jsonS);
		System.out.println("GGGGGGGGG" + request.getParameter("data"));
		
		JSONArray jsonArray = new JSONArray(jsonS);
		System.out.println("길이 ::: " +jsonArray.length() );
		// System.out.println(jsonArray.get(0).toString());
		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);
			// [{ aa : nn }

			kw30000u1173vo.setNsptDd((String) jsonObj.get("nsptDd"));
			kw30000u1173vo.setNsptPrsnNm((String) jsonObj.get("nsptPrsnNm"));
			kw30000u1173vo.setNsptPos((String) jsonObj.get("nsptPos"));
			kw30000u1173vo.setAbnmYn((String) jsonObj.get("abnmYn"));

			if (!jsonObj.has("seq")) {
				int insertNum = kw30000u1173Service.KW30000U1173insertSave(kw30000u1173vo);

			} else {
				kw30000u1173vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				int updateNum = kw30000u1173Service.KW30000U1173updateSave(kw30000u1173vo);
				System.out.println("ggggggggggggggggdddddddddddddddgggggg" + kw30000u1173vo.getSeq());
			}
			
			
		}

		// select 다시 실행
		// List<KW30000U1173VO> resultList1 =
		// kw30000u1173Service.KW30000U1173pageList(kw30000u1173vo);
		// 리턴을 안하고, ajax(jsp)에서 성공시, 다시 조회를 한다.

	}

	/* 점검표 실시 - 팝업 페이지 호출 */
	@RequestMapping("/KW30000U1173chkPop.do")
	public String KW30000U1173chkPop() throws Exception {
		return "page/KW30000/KW30000U1173chkPop";
	}
	
	/* 점검표 실시 -  팝업 Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1173chkPopList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U1173chkPopList(
			// 페이징처리
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range
			// 검색키워드
			, @RequestParam(required = false, defaultValue = "keyword") String searchType,
			@RequestParam(required = false) String keyword, @ModelAttribute("search") SearchHndlr search,
			HttpSession session) throws Exception {

		HashMap<String, Object> result = new HashMap<>();

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호
		Paging paging = new Paging();

		if (popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw30000u1173Service.KW30000U1173selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u1173Service.KW30000U1173selectCnt(search);
			paging.setCri(search);
			paging.setTotalCount(listCnt);
		}

		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("popchkList", kw30000u1173Service.KW30000U1173popChkList(search));
		result.put("resultList", kw30000u1173Service.KW30000U1173popSelect(search));

		return ResponseEntity.ok(result);
	}

	/* 팝업창 Ajax 라디오 박스 클릭 저장 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1173popSave.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1173popSave(@ModelAttribute("kw30000u1173vo") KW30000U1173VO kw30000u1173vo, Model model,
			HttpServletRequest request, HttpSession session) throws Exception {

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호

		if (popBzRgstNo == null) {
			kw30000u1173vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw30000u1173vo.setBzRgstNo(popBzRgstNo);
		}

		String dataJson = request.getParameter("data").replaceAll("&quot;", "\'");
		String radioDataJson = request.getParameter("radioData").replaceAll("&quot;", "\'");
		String nsptDd = request.getParameter("nsptDd").replaceAll("&quot;", "\'");
		String nsptPrsnNm = request.getParameter("nsptPrsnNm").replaceAll("&quot;", "\'");
		String nsptPos = request.getParameter("nsptPos").replaceAll("&quot;", "\'");
		String mgtNo = request.getParameter("mgtNo").replaceAll("&quot;", "\'");
		
		String[] jsonArray = dataJson.split("\\|");
		String[] radioJsonArray = radioDataJson.split("");
		
		System.out.println("dddddddddddddddd" + jsonArray);
		System.out.println("dddddddddddddddd" + radioJsonArray);
		
		for(int i = 0; i< jsonArray.length; i++) {
			kw30000u1173vo.setNsptChkList(jsonArray[i]);         
			kw30000u1173vo.setNsptRsltYn(radioJsonArray[i]);
			kw30000u1173vo.setNsptDd(nsptDd);
			kw30000u1173vo.setNsptPrsnNm(nsptPrsnNm);
			kw30000u1173vo.setNsptPos(nsptPos);
			kw30000u1173vo.setMgtNo(mgtNo);
			int popInsertNum = kw30000u1173Service.KW30000U1173popInsertSave(kw30000u1173vo);
		}


	}
	

	
	
}
