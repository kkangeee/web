package iohp.page.KW30000.web.U4000;

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
import iohp.page.KW30000.service.KW30000U4800Service;
import iohp.page.KW30000.service.KW30000U4800VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U4800Controller {
	@Resource(name = "KW30000U4800Service")
	private KW30000U4800Service kw30000u4800Service;
	/*
	@RequestMapping("/KW30000U4800.do")
	public String KW30000U4800pageList(@ModelAttribute("kw30000u4800vo") KW30000U4800VO kw30000u4800vo, Model model,
			HttpSession session, HttpServletRequest request) throws Exception {
		List<KW30000U4800VO> resultList1 = kw30000u4800Service.KW30000U4800pageList(kw30000u4800vo);

		model.addAttribute("resultList1", resultList1);
		System.out.println("controller에서 resultList1의 값" + resultList1);
		return "page/KW30000/KW30000U4800";
	}
	*/
	
	@RequestMapping("/KW30000U4800.do")
	public String KW30000U4800pageList(@ModelAttribute("kw30000u4800vo") KW30000U4800VO kw30000u4800vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
	
		model.addAttribute("act", "KW30000U4800");
		return "page/KW30000/KW30000U4800";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U4800selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U4800List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		// 페이징
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw30000u4800Service.KW30000U4800selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u4800Service.KW30000U4800selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		result.put("pagination", paging);

		// 게시글 화면 출력
		result.put("resultList", kw30000u4800Service.KW30000U4800select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U4800delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U4800delete(@ModelAttribute("kw30000u4800vo") KW30000U4800VO kw30000u4800vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u4800vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u4800vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    //	 kw30000u4800vo.setTableNm("TB_KW50_SFTY_HLTH_ORG_CMPS");
	    	 kw30000u4800vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u4800Service.KW30000U4800delete(kw30000u4800vo);
	    }

		// select 다시 실행
		// List<KW30000U4800VO> resultList1 = kw30000u4800Service.KW30000U4800pageList(kw30000u4800vo);
        //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
		//return resultList1;
	}
	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U4800save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U4800save(@ModelAttribute("kw30000u4800vo") KW30000U4800VO kw30000u4800vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u4800vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u4800vo.setBzRgstNo(popBzRgstNo);
			}
			kw30000u4800vo.setMbrNm(authUser.getMbrNm());
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	    
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	    	 	kw30000u4800vo.setTgtPplNm((String)jsonObj.get("tgtPplNm"));
				kw30000u4800vo.setDept((String)jsonObj.get("dept"));
				kw30000u4800vo.setPstnCls((String)jsonObj.get("pstnCls"));
				kw30000u4800vo.setEduStrDd((String)jsonObj.get("eduStrDd"));
				kw30000u4800vo.setEduEndDd((String)jsonObj.get("eduEndDd"));
				   
			 //kw30000u4800vo.setEduVlidEndDd((String) jsonObj.get("eduVlidEndDd"));  
			 //kw30000u4800vo.setEduCertiPos((String) jsonObj.get("eduCertiPos"));  
			 //kw30000u4800vo.setWrkPlcMgtUniqNo((String) jsonObj.get("wrkPlcMgtUniqNo"));  
			 //kw30000u4800vo.setMbrId((String) jsonObj.get("mbrId"));  
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw30000u4800Service.KW30000U4800insertSave(kw30000u4800vo);
				
			 }else {
				 kw30000u4800vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw30000u4800Service.KW30000U4800updateSave(kw30000u4800vo);
			 }
	     }
	     
		// select 다시 실행
		 // List<KW30000U4800VO> resultList1 = kw30000u4800Service.KW30000U4800pageList(kw30000u4800vo);
	   //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
	  
	  }
	

  
}

