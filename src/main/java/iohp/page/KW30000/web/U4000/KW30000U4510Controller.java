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
import iohp.page.KW30000.service.KW30000U4510Service;
import iohp.page.KW30000.service.KW30000U4510VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U4510Controller {
	@Resource(name = "KW30000U4510Service")
	private KW30000U4510Service kw30000u4510Service;
	/*
	@RequestMapping("/KW30000U4510.do")
	public String KW30000U4510pageList(@ModelAttribute("kw30000u4510vo") KW30000U4510VO kw30000u4510vo, Model model,
			HttpSession session, HttpServletRequest request) throws Exception {
		List<KW30000U4510VO> resultList1 = kw30000u4510Service.KW30000U4510pageList(kw30000u4510vo);

		model.addAttribute("resultList1", resultList1);
		System.out.println("controller에서 resultList1의 값" + resultList1);
		return "page/KW30000/KW30000U4510";
	}
	*/
	
	@RequestMapping("/KW30000U4510.do")
	public String KW30000U4510pageList(@ModelAttribute("kw30000u4510vo") KW30000U4510VO kw30000u4510vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
	
		model.addAttribute("act", "KW30000U4510");
		return "page/KW30000/KW30000U4510";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U4510selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U4510List(
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
			int listCnt = kw30000u4510Service.KW30000U4510selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u4510Service.KW30000U4510selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		result.put("pagination", paging);

		// 게시글 화면 출력
		result.put("resultList", kw30000u4510Service.KW30000U4510select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U4510delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U4510delete(@ModelAttribute("kw30000u4510vo") KW30000U4510VO kw30000u4510vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u4510vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u4510vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    //	 kw30000u4510vo.setTableNm("TB_KW50_SFTY_HLTH_ORG_CMPS");
	    	 kw30000u4510vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u4510Service.KW30000U4510delete(kw30000u4510vo);
	    }

		// select 다시 실행
		// List<KW30000U4510VO> resultList1 = kw30000u4510Service.KW30000U4510pageList(kw30000u4510vo);
        //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
		//return resultList1;
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U4510save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U4510save(@ModelAttribute("kw30000u4510vo") KW30000U4510VO kw30000u4510vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u4510vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u4510vo.setBzRgstNo(popBzRgstNo);
			}
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());

	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	    	 	  kw30000u4510vo.setUnitCoNm((String)jsonObj.get("unitCoNm"));
	    	 	  kw30000u4510vo.setPrcsNm((String)jsonObj.get("prcsNm"));
				  kw30000u4510vo.setHndlHrmFctr((String)jsonObj.get("hndlHrmFctr"));
				  kw30000u4510vo.setPrttGearNm((String)jsonObj.get("prttGearNm"));
				  kw30000u4510vo.setRating((String)jsonObj.get("rating"));
				  //kw30000u4510vo.setEndDd((String)jsonObj.get("endDd"));
				  kw30000u4510vo.setTargetPrsn(Integer.parseInt((String)jsonObj.get("targetPrsn").toString()));
				  kw30000u4510vo.setSpplDd((String) jsonObj.get("spplDd"));
				   
			 //kw30000u4510vo.setEduVlidEndDd((String) jsonObj.get("eduVlidEndDd"));  
			 //kw30000u4510vo.setEduCertiPos((String) jsonObj.get("eduCertiPos"));  
			 //kw30000u4510vo.setWrkPlcMgtUniqNo((String) jsonObj.get("wrkPlcMgtUniqNo"));  
			 //kw30000u4510vo.setMbrId((String) jsonObj.get("mbrId"));  
			  
			 
			 if (!jsonObj.has("seq")) {
				 
				 int insertNum = kw30000u4510Service.KW30000U4510insertSave(kw30000u4510vo);
				
			 }else {
				 kw30000u4510vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw30000u4510Service.KW30000U4510updateSave(kw30000u4510vo);
			 }
	     }
	     
		// select 다시 실행
		 // List<KW30000U4510VO> resultList1 = kw30000u4510Service.KW30000U4510pageList(kw30000u4510vo);
	   //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
	  
	  }
	

  
}

