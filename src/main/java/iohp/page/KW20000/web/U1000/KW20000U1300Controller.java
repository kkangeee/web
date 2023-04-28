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
import iohp.page.KW20000.service.KW20000U1300Service;
import iohp.page.KW20000.service.KW20000U1300VO;

@RequestMapping("/page/KW20000")
@Controller
public class KW20000U1300Controller {
	@Resource(name = "KW20000U1300Service")
	private KW20000U1300Service kw20000u1300Service; 
	
	@RequestMapping("/KW20000U1300.do")
	public String KW20000U1300pageList(Model model) throws Exception {
		model.addAttribute("act", "KW20000U0000");
		model.addAttribute("act2", "KW20000U1000");
		model.addAttribute("act3", "KW20000U1300");
		return "page/KW20000/KW20000U1300";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW20000U1300selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW20000U1300List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search
			,KW20000U1300VO kw20000u1300vo, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		//세션값 가져오기
				LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
				String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
				Paging paging = new Paging();
				
				if(popBzRgstNo == null) {
					search.setSearchBzRgstNo(authUser.getBzRgstNo());
					int listCnt = kw20000u1300Service.KW20000U1300selectCnt(search);
					paging.setCri(search);
			        paging.setTotalCount(listCnt);
				} else {
					search.setSearchBzRgstNo(popBzRgstNo);
					int listCnt = kw20000u1300Service.KW20000U1300selectCnt(search);
					paging.setCri(search);
			        paging.setTotalCount(listCnt);
				}
				
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw20000u1300Service.KW20000U1300select(search));
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW20000U1300delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW20000U1300delete(@ModelAttribute("kw20000u1300vo") KW20000U1300VO kw20000u1300vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw20000u1300vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw20000u1300vo.setBzRgstNo(popBzRgstNo);
			}
			
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	// kw20000u1300vo.setTableNm("TB_KW50_ANUAL_PLN_MGT");
	    	 kw20000u1300vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw20000u1300Service.KW20000U1300delete(kw20000u1300vo);
	    }

		// select 다시 실행
		// List<kw20000u1300vo> resultList1 = kw20000u1300Service.KW20000U1300pageList(kw20000u1300vo);
        //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
		//return resultList1;
	}

	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW20000U1300save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW20000U1110save(@ModelAttribute("kw20000u1300vo") KW20000U1300VO kw20000u1300vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw20000u1300vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw20000u1300vo.setBzRgstNo(popBzRgstNo);
			}
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 

	    	  kw20000u1300vo.setPrdtNm((String)jsonObj.get("prdtNm"));
			  kw20000u1300vo.setSpplCmp((String)jsonObj.get("spplCmp"));
			  kw20000u1300vo.setRcptDd((String)jsonObj.get("rcptDd"));
			  kw20000u1300vo.setRcptQnty(Integer.parseInt(jsonObj.get("rcptQnty").toString()));
			  kw20000u1300vo.setIssDd((String)jsonObj.get("issDd"));
			  kw20000u1300vo.setIssQnty(Integer.parseInt(jsonObj.get("issQnty").toString()));
			  kw20000u1300vo.setStckQnty(Integer.parseInt(jsonObj.get("stckQnty").toString()));
				 
			 //kw20000u1300vo.setEndDd((String)jsonObj.get("endDd"));
			 //kw20000u1300vo.setEduVlidEndDd((String) jsonObj.get("eduVlidEndDd"));  
			 //kw20000u1300vo.setEduCertiPos((String) jsonObj.get("eduCertiPos"));  
			 //kw20000u1300vo.setWrkPlcMgtUniqNo((String) jsonObj.get("wrkPlcMgtUniqNo"));  
			 //kw20000u1300vo.setMbrId((String) jsonObj.get("mbrId"));  
			  
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw20000u1300Service.KW20000U1300insertSave(kw20000u1300vo);
				
			 }else {
				 kw20000u1300vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw20000u1300Service.KW20000U1300updateSave(kw20000u1300vo);
			 }
	     }
	  
	  }
	  
	

  
}

