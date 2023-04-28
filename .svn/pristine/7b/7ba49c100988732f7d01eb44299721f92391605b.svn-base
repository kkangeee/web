package iohp.page.KW10000.web;

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
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW10000.service.KW10000U2100Service;
import iohp.page.KW10000.service.KW10000U2100VO;

@RequestMapping("/page/KW10000")
@Controller
public class KW10000U2100Controller {
	
	@Resource(name = "KW10000U2100Service")
	private KW10000U2100Service kw10000u2100Service;
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */	
	@RequestMapping("/KW10000U2100.do")
	public String KW10000U2100pageList(Model model) throws Exception {
		model.addAttribute("act", "KW10000U0000");
		model.addAttribute("act2", "KW10000U2000");
		return "page/KW10000/KW10000U2100";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U2100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U2100List(@ModelAttribute SearchHndlr search, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");
		String popBzRgstNo = (String)session.getAttribute("popBzRgstNo");
		/*----------------*/
	
		Paging paging = new Paging();
		//사업자번호 조회 
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw10000u2100Service.KW10000U2100selectCnt(search);
			paging.setCri(search);
		    paging.setTotalCount(listCnt); 
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw10000u2100Service.KW10000U2100selectCnt(search);
			paging.setCri(search);
		    paging.setTotalCount(listCnt); 
		}
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("pagination", paging);
		result.put("resultList", kw10000u2100Service.KW10000U2100select(search));
				
		return ResponseEntity.ok(result);
	}
	
	/* 단위사업체조회  */
	@ResponseBody
	@RequestMapping(value = "/KW10000U2100UnitCoNm", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U2100UnitCoNm(@ModelAttribute SearchHndlr search, HttpSession session) throws Exception{
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");
		String popBzRgstNo = (String)session.getAttribute("popBzRgstNo");
		/*----------------*/
		
		//사업자번호 조회 
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
		}
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("unitCoNm", kw10000u2100Service.KW10000U2100UnitCoNm(search));
		return ResponseEntity.ok(result);
	}
	
	/* 공정명  */
	@ResponseBody
	@RequestMapping(value = "/KW10000U2100PrcsNm", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U2100PrcsNm(@ModelAttribute SearchHndlr search, HttpSession session) throws Exception{
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");
		String popBzRgstNo = (String)session.getAttribute("popBzRgstNo");
		/*----------------*/
		//사업자번호 조회 
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
		}
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("PrcsNm", kw10000u2100Service.KW10000U2100PrcsNm(search));
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U2100delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW10000U2100delete(@ModelAttribute("kw10000u2100vo") KW10000U2100VO kw10000u2100vo, HttpServletRequest request, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO) session.getAttribute("authUser");
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo");
		/*----------------*/
		kw10000u2100vo.setBzRgstNo(popBzRgstNo);
		kw10000u2100vo.setMbrNm(authUser.getMbrNm());
		
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw10000u2100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
	    	 cnt += kw10000u2100Service.KW10000U2100delete(kw10000u2100vo);
	    }
	    
	}

	
	/* Ajax 추가 & 저장 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U2100save.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW10000U2100save(@ModelAttribute KW10000U2100VO kw10000u2100vo, HttpServletRequest request,
			HttpSession session) throws Exception {
		// 추가

		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO) session.getAttribute("authUser");
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo");
		/*----------------*/
		kw10000u2100vo.setMbrNm(authUser.getMbrNm());

		if (popBzRgstNo == null) {
			kw10000u2100vo.setBzRgstNo(authUser.getBzRgstNo());

		} else {
			kw10000u2100vo.setBzRgstNo(popBzRgstNo);
		}

		String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		JSONArray jsonArray = new JSONArray(jsonS);

		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);

			kw10000u2100vo.setUnitCoNm((String) jsonObj.get("unitCoNm")); /* 협력사명 */
			kw10000u2100vo.setPrcsNm((String) jsonObj.get("prcsNm")); /* 협력사사업자등록번호 */
			kw10000u2100vo.setWrkDtl((String) jsonObj.get("wrkDtl")); /* 대표자이름 */
			kw10000u2100vo.setPrcsRgstDd((String) jsonObj.get("prcsRgstDd")); /* 단위사업체명 */
			//kw10000u2100vo.setPrcsModiDd((String) jsonObj.get("prcsModiDd")); /* 공정명 */

			if (!jsonObj.has("seq")) {
				int insertNum = kw10000u2100Service.KW10000U2100insertSave(kw10000u2100vo);
			} else {
				kw10000u2100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				int updateNum = kw10000u2100Service.KW10000U2100updateSave(kw10000u2100vo);
			}
		}

	}
	  
	/* 히스토리내역 - 리스트 출력*/
	@RequestMapping("/KW10000U2100Pop.do")
	public String KW10000U2100Pop() throws Exception {
		return "page/KW10000/KW10000U2100pop";
	}
	
	/* Ajax pop 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U2100popList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U2100popList(SearchHndlr search, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");
		String popBzRgstNo = (String)session.getAttribute("popBzRgstNo");
		/*----------------*/
		
		Paging paging = new Paging();//페이징 객체 추가
		//사업자번호 조회 
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw10000u2100Service.KW10000U2100selectCnt(search);
			paging.setCri(search);
		    paging.setTotalCount(listCnt); 
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw10000u2100Service.KW10000U2100selectCnt(search);
			paging.setCri(search);
		    paging.setTotalCount(listCnt); 
		}
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("pagination", paging);		
		result.put("resultList", kw10000u2100Service.KW10000U2100popSelect(search));
				
		return ResponseEntity.ok(result);
	}
	
	
}
