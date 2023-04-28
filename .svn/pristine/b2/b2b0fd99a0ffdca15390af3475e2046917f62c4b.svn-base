package iohp.mypage.web;

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
import iohp.mypage.service.KW80000U1100Service;
import iohp.mypage.service.KW80000U1100VO;


@RequestMapping("/mypage")
@Controller
public class MY80000U1100Controller {
	@Resource(name = "KW80000U1100Service")
	private KW80000U1100Service kw80000u1100Service;
	
	@RequestMapping("/MY80000U1100.do")
	public String KW80000U1100pageList(Model model) throws Exception {
		model.addAttribute("act", "KW80000U0000");
		model.addAttribute("act2", "KW80000U1000");
		return "/mypage/MY80000U1100";
		
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW80000U1100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW80000U1100List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		

		//세션값 가져오기
				LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
				String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
				// 페이징 객체 - 추가
		        Paging paging = new Paging();
		        
				if(popBzRgstNo == null) {
					search.setSearchBzRgstNo(authUser.getBzRgstNo());
					int listCnt = kw80000u1100Service.KW80000U1100selectCnt(search);
					// 검색
			        paging.setCri(search);
			        paging.setTotalCount(listCnt); 
				} else {
					search.setSearchBzRgstNo(popBzRgstNo);
					int listCnt = kw80000u1100Service.KW80000U1100selectCnt(search);
			        paging.setCri(search);
			        paging.setTotalCount(listCnt); 
				}
				// 페이징
				result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw80000u1100Service.KW80000U1100select(search));
		
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW80000U1100delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW80000U1100delete(@ModelAttribute("kw80000u1100vo") KW80000U1100VO kw80000u1100vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw80000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw80000u1100vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw80000u1100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw80000u1100Service.KW80000U1100delete(kw80000u1100vo);
	    }

		// select 다시 실행
		// List<KW80000U1100VO> resultList1 = kw80000u1100Service.KW80000U1100pageList(kw80000u1100vo);
        //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
		//return resultList1;
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW80000U1100save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW80000U1100save(@ModelAttribute("kw80000u1100vo") KW80000U1100VO kw80000u1100vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw80000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw80000u1100vo.setBzRgstNo(popBzRgstNo);
			}
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	    	
	    	 kw80000u1100vo.setSrvNm((String)jsonObj.get("srvNm"));   
	    	 kw80000u1100vo.setBzRgstNo((String)jsonObj.get("bzRgstNo"));  
			 kw80000u1100vo.setBzCoNm((String)jsonObj.get("bzCoNm"));   
			 kw80000u1100vo.setConDd((String)jsonObj.get("conDd"));  
			 kw80000u1100vo.setBzStrDd((String)jsonObj.get("bzStrDd"));
			 kw80000u1100vo.setBzEndDd((String)jsonObj.get("bzEndDd"));  
			 kw80000u1100vo.setConSum(Integer.parseInt(jsonObj.get("conSum").toString()));
			 kw80000u1100vo.setBillIsuBilgNo(Integer.parseInt(jsonObj.get("billIsuBilgNo").toString()));
			 kw80000u1100vo.setBillIsuBilgDd((String)jsonObj.get("billIsuBilgDd"));  
			 kw80000u1100vo.setChrgPrsnNm((String)jsonObj.get("chrgPrsnNm"));  
			  
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw80000u1100Service.KW80000U1100insertSave(kw80000u1100vo);
				
			 }else {
				 kw80000u1100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw80000u1100Service.KW80000U1100updateSave(kw80000u1100vo);
			 }
	     }
	     
		// select 다시 실행
		 // List<KW80000U1100VO> resultList1 = kw80000u1100Service.KW80000U1100pageList(kw80000u1100vo);
	   //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
	  
	  }
	

  
}

