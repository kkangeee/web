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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW10000.service.KW10000U3100Service;
import iohp.page.KW10000.service.KW10000U3100VO;

@RequestMapping("/page/KW10000")
@Controller
public class KW10000U3100Controller {
	
	@Resource(name = "KW10000U3100Service")
	private KW10000U3100Service kw10000u3100Service;
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */	
	@RequestMapping("/KW10000U3100.do")
	public String KW10000U3100pageList(Model model) throws Exception {
		model.addAttribute("act", "KW10000U0000");
		model.addAttribute("act2", "KW10000U3000");
		return "page/KW10000/KW10000U3100";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U3100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U3100List(@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		/*----------------*/
		
		Paging paging = new Paging();//페이징 객체 추가 
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw10000u3100Service.KW10000U3100selectCnt(search);
			paging.setCri(search);
		    paging.setTotalCount(listCnt); 
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw10000u3100Service.KW10000U3100selectCnt(search);
			paging.setCri(search);
		    paging.setTotalCount(listCnt); 
		}

		// 게시글 화면 출력
		HashMap<String, Object> result = new HashMap<>();
		result.put("pagination", paging);
		result.put("resultList", kw10000u3100Service.KW10000U3100select(search));
				
		return ResponseEntity.ok(result);
	}
	
	/* Ajax 단위사업체  & 공정명 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U3100selectNmList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U3100NmList(@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/ 
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		/*----------------*/
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
		}
		
		// 게시글 화면 출력
		HashMap<String, Object> result = new HashMap<>();
		result.put("resultPrcsNm", kw10000u3100Service.KW10000U3100selectPrcsNm(search));
		result.put("resultUnitCoNm", kw10000u3100Service.KW10000U3100selectUnitCoNm(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U3100delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW10000U3100delete(@ModelAttribute("kw10000u3100vo") KW10000U3100VO kw10000u3100vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		 /*---세션 사용자 입력---*/ 
		 LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		 kw10000u3100vo.setMbrNm(authUser.getMbrNm());
		 /*----------------*/
		 String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		 
		 if(popBzRgstNo == null) {
			 kw10000u3100vo.setBzRgstNo(authUser.getBzRgstNo());
		 } else {
			 kw10000u3100vo.setBzRgstNo(popBzRgstNo);
		 } 
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	    int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw10000u3100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
	    	 cnt += kw10000u3100Service.KW10000U3100delete(kw10000u3100vo);
	    }
	    
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW10000U3100save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW10000U3100save(@ModelAttribute("kw10000u3100vo") KW10000U3100VO kw10000u3100vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  //추가
		 
	  	 /*---세션 사용자 입력---*/ 
		 LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		 kw10000u3100vo.setMbrNm(authUser.getMbrNm());
		 /*----------------*/
		 String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		 
		 if(popBzRgstNo == null) {
			 kw10000u3100vo.setBzRgstNo(authUser.getBzRgstNo());
		 } else {
			 kw10000u3100vo.setBzRgstNo(popBzRgstNo);
		 } 
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     JSONArray jsonArray = new JSONArray(jsonS);
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	 	    
	    	 kw10000u3100vo.setEmpeNo((String)jsonObj.get("empeNo"));   	/*사번*/
			 kw10000u3100vo.setNm((String)jsonObj.get("nm"));    			/*이름*/
			 kw10000u3100vo.setGndr((String)jsonObj.get("gndr"));      		/*성별*/
			 kw10000u3100vo.setBdt((String)jsonObj.get("bdt"));  			/*생년월일*/
			 kw10000u3100vo.setPrcsNm((String)jsonObj.get("prcsNm"));    	/*전화번호*/
			 kw10000u3100vo.setUnitCoNm((String)jsonObj.get("unitCoNm"));   /*전화번호*/
			 kw10000u3100vo.setFonNo((String)jsonObj.get("fonNo")); 		/*전화번호*/
			 kw10000u3100vo.setRoleNm((String)jsonObj.get("roleNm"));       /*공정명*/
			 kw10000u3100vo.setEmpForm((String)jsonObj.get("empForm"));     /*역할명*/
			 kw10000u3100vo.setSrvForm((String)jsonObj.get("srvForm"));     /*고용형태*/
			 kw10000u3100vo.setTrsfInDd((String)jsonObj.get("trsfInDd"));   /*근무형태*/
			 kw10000u3100vo.setEndDd((String)jsonObj.get("endDd"));       	/*등록일*/
			 
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw10000u3100Service.KW10000U3100insertSave(kw10000u3100vo);
			 }else{
				 kw10000u3100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString().trim())); 
				 kw10000u3100vo.setEmpeNo((String)(jsonObj.get("empeNo")));			
				 int updateNum = kw10000u3100Service.KW10000U3100updateSave(kw10000u3100vo);
			 }
	     }
	     	  
	  }
	  	

}
