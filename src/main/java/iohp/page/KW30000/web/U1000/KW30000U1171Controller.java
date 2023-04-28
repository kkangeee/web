package iohp.page.KW30000.web.U1000;

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
import iohp.page.KW30000.service.KW30000U1171Service;
import iohp.page.KW30000.service.KW30000U1171VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U1171Controller {
	@Resource(name = "KW30000U1171Service")
	private KW30000U1171Service kw30000u1171Service;
	
	@RequestMapping("/KW30000U1171.do")
	public String KW30000U1171pageList(@ModelAttribute("kw30000u1171vo") KW30000U1171VO kw30000u1171vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U1171";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1171selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U1171List(
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
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw30000u1171Service.KW30000U1171selectCnt(search);
	        paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u1171Service.KW30000U1171selectCnt(search);
	        paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		// 페이징
				result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw30000u1171Service.KW30000U1171select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1171delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1171delete(@ModelAttribute("kw30000u1171vo") KW30000U1171VO kw30000u1171vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		
		 //세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u1171vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u1171vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw30000u1171vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u1171Service.KW30000U1171delete(kw30000u1171vo);
	    }

	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U1171save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U1171save(@ModelAttribute("kw30000u1171vo") KW30000U1171VO kw30000u1171vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  //추가
		  
		  /*
		  LoginVO loginVO = (LoginVO)session.getAttribute("authUser"); //세션값 가져오기
		  kw30000u1171vo.setMbrId(loginVO.getMbrId()); //VO에 로그인 아이뒤 넣기
		  kw30000u1171vo.setMbrId(loginVO.getBzRgstNo()); //VO에 사업등록번호 넣기
		  */
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     
	   //세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u1171vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u1171vo.setBzRgstNo(popBzRgstNo);
			}
	     
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	 	    
	    	 kw30000u1171vo.setMedcnNm((String)jsonObj.get("medcnNm"));   
			 kw30000u1171vo.setUse((String)jsonObj.get("use"));   
			 kw30000u1171vo.setRcptDd((String)jsonObj.get("rcptDd"));  
			 kw30000u1171vo.setRcptQty(Integer.parseInt(jsonObj.get("rcptQty").toString())); 
			 kw30000u1171vo.setUseQnty(Integer.parseInt(jsonObj.get("useQnty").toString()));
			 kw30000u1171vo.setStckQnty(Integer.parseInt(jsonObj.get("stckQnty").toString()));
			 kw30000u1171vo.setVlidTermEndDd((String)jsonObj.get("vlidTermEndDd"));
			 kw30000u1171vo.setDuseDd((String)jsonObj.get("duseDd"));
			 //kw30000u1171vo.setEndDd((String)jsonObj.get("endDd"));
			 //kw30000u1171vo.setMbrId((String) jsonObj.get("mbrId"));  
			 
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw30000u1171Service.KW30000U1171insertSave(kw30000u1171vo);
				
			 }else {
				 kw30000u1171vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw30000u1171Service.KW30000U1171updateSave(kw30000u1171vo);
			 }
	     }
	  }
	

  
}

