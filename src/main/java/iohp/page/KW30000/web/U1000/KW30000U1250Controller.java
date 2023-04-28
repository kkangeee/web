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
import iohp.page.KW30000.service.KW30000U1250Service;
import iohp.page.KW30000.service.KW30000_1200VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U1250Controller {
	@Resource(name = "KW30000U1250Service")
	private KW30000U1250Service kw30000u1250Service; 
	
	@RequestMapping("/KW30000U1250.do")
	public String KW30000U1250pageList(@ModelAttribute("kw30000_1200vo") KW30000_1200VO kw30000_1200vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U1250";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1250selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U1250List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search
			,KW30000_1200VO kw30000_1200vo, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw30000u1250Service.KW30000U1250selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u1250Service.KW30000U1250selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		
		// 페이징
		result.put("pagination", paging);

		// 게시글 화면 출력
		result.put("resultList", kw30000u1250Service.KW30000U1250select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1250delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1250delete(@ModelAttribute("kw30000_1200vo") KW30000_1200VO kw30000_1200vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000_1200vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000_1200vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw30000_1200vo.setTableNm("TB_KW50_ANUAL_PLN_MGT");
	    	 kw30000_1200vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u1250Service.KW30000U1250delete(kw30000_1200vo);
	    }
	}

	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U1250save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U1110save(@ModelAttribute("kw30000_1200vo") KW30000_1200VO kw30000_1200vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000_1200vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000_1200vo.setBzRgstNo(popBzRgstNo);
			}
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	 	    
	    	 kw30000_1200vo.setTableNm("TB_KW50_ANUAL_PLN_MGT");   
	    	 kw30000_1200vo.setPlnLrgClss("환경관리분야");   
	    	 kw30000_1200vo.setPlnMidClss("*");   
	    	 kw30000_1200vo.setPlnSmlClss("*");   
	    	 kw30000_1200vo.setTp((String)jsonObj.get("tp"));   
	    	 kw30000_1200vo.setLtlImplDd((String)jsonObj.get("ltlImplDd"));   
	    	 kw30000_1200vo.setExpsLmitExsPrcs((String)jsonObj.get("expsLmitExsPrcs"));   
	    	 kw30000_1200vo.setPlnDtl((String)jsonObj.get("plnDtl"));  
			  
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw30000u1250Service.KW30000U1250insertSave(kw30000_1200vo);
				
			 }else {
				 kw30000_1200vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw30000u1250Service.KW30000U1250updateSave(kw30000_1200vo);
			 }
	     }
	     
	  }
	  
	

  
}

