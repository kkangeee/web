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
import iohp.page.KW10000.service.KW10000U1300Service;
import iohp.page.KW10000.service.KW10000U1300VO;

@RequestMapping("/page/KW10000")
@Controller
public class KW10000U1300Controller {
	
	@Resource(name = "KW10000U1300Service")
	private KW10000U1300Service kw10000u1300Service;
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */	
	@RequestMapping("/KW10000U1300.do")
	public String KW10000U1300pageList(Model model) throws Exception {
			model.addAttribute("act", "KW10000U0000");
			model.addAttribute("act2", "KW10000U1000");
		return "page/KW10000/KW10000U1300";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U1300selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW10000U1300List(@ModelAttribute("search") SearchHndlr search
			,HttpSession session) throws Exception {
	        
	        /*---세션 사용자 입력---*/ 
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			/*----------------*/
			
			Paging paging = new Paging();//페이징 객체 추가 
			if(popBzRgstNo == null) {
				search.setSearchBzRgstNo(authUser.getBzRgstNo());
				int listCnt = kw10000u1300Service.KW10000U1300selectCnt(search);
				paging.setCri(search);
			    paging.setTotalCount(listCnt); 
			} else {
				search.setSearchBzRgstNo(popBzRgstNo);
				int listCnt = kw10000u1300Service.KW10000U1300selectCnt(search);
				paging.setCri(search);
			    paging.setTotalCount(listCnt); 
			}
			
			HashMap<String, Object> result = new HashMap<>();
			result.put("pagination", paging);
			result.put("resultList", kw10000u1300Service.KW10000U1300select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW10000U1300delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW10000U1300delete(@ModelAttribute("kw10000u1300vo") KW10000U1300VO kw10000u1300vo, HttpServletRequest request) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw10000u1300vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
	    	 cnt += kw10000u1300Service.KW10000U1300delete(kw10000u1300vo);
	    }
	    
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW10000U1300save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW10000U1300save(@ModelAttribute("kw10000u1300vo") KW10000U1300VO kw10000u1300vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  //추가
		 /*---세션 사용자 입력---*/ 
		 LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		 kw10000u1300vo.setMbrNm(authUser.getMbrNm());
		 /*----------------*/
		 String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		
		 if(popBzRgstNo == null) {
		    	kw10000u1300vo.setBzRgstNo(authUser.getBzRgstNo());
		 } else {
		    	kw10000u1300vo.setBzRgstNo(popBzRgstNo);
		 } 
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println(jsonS);
	     JSONArray jsonArray = new JSONArray(jsonS);
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw10000u1300vo.setPtnrCoNm((String)jsonObj.get("ptnrCoNm"));   /* 협력사명 */
			 kw10000u1300vo.setPtnrCoBzRgstno((String)jsonObj.get("ptnrCoBzRgstno"));   /* 협력사사업자등록번호 */
			 kw10000u1300vo.setHeadNm((String)jsonObj.get("headNm"));       /* 대표자이름 */
			 kw10000u1300vo.setUnitCoNm((String)jsonObj.get("unitCoNm"));   /* 단위사업체명 */
			 kw10000u1300vo.setPrcsNm((String)jsonObj.get("prcsNm"));       /* 공정명 */
			 kw10000u1300vo.setWrkrCnt(Integer.parseInt(jsonObj.get("wrkrCnt").toString().trim())); /* 근로자수 */
			 kw10000u1300vo.setPrsnChrg((String)jsonObj.get("prsnChrg"));      /* 담당자 */
			 kw10000u1300vo.setFonNo((String)jsonObj.get("fonNo"));        /* 연락처 */
			  
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw10000u1300Service.KW10000U1300insertSave(kw10000u1300vo);
			 }else {
				 kw10000u1300vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw10000u1300Service.KW10000U1300updateSave(kw10000u1300vo);
			 }
	     }
	     	  
	  }
	
}
