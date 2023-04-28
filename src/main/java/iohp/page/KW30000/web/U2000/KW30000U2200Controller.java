package iohp.page.KW30000.web.U2000;

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
import iohp.page.KW30000.service.KW30000U2200Service;
import iohp.page.KW30000.service.KW30000U2200VO;
import iohp.page.KW30000.service.KW30000U2200psnlVO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U2200Controller {
	@Resource(name = "KW30000U2200Service")
	private KW30000U2200Service kw30000u2200Service;
	
	@RequestMapping("/KW30000U2200.do")
	public String KW30000U2200pageList(@ModelAttribute("kw30000u2200vo") KW30000U2200VO kw30000u2200vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000U2200");
		return "page/KW30000/KW30000U2200";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U2200selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U2200List(
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
			int listCnt = kw30000u2200Service.KW30000U2200selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u2200Service.KW30000U2200selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		
		// 페이징
		result.put("pagination", paging);

		// 게시글 화면 출력
		result.put("resultList", kw30000u2200Service.KW30000U2200select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U2200delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U2200delete(@ModelAttribute("kw30000u2200vo") KW30000U2200VO kw30000u2200vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		
		// 세션값 가져오기
			LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
			String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호

			if (popBzRgstNo == null) {
				kw30000u2200vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u2200vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw30000u2200vo.setMedExamSeq(Integer.parseInt(jsonObj.get("medExamSeq").toString()));   
	    	 cnt += kw30000u2200Service.KW30000U2200delete(kw30000u2200vo);
	    }
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U2200save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U2200save(@ModelAttribute("kw30000u2200vo") KW30000U2200VO kw30000u2200vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  //추가
		// 세션값 가져오기
			LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
			String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호

			if (popBzRgstNo == null) {
				kw30000u2200vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u2200vo.setBzRgstNo(popBzRgstNo);
			} 
		  
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	 	    
	    	 kw30000u2200vo.setMedExamImplYear((String)jsonObj.get("medExamImplYear"));   
			 kw30000u2200vo.setMedExamTp((String)jsonObj.get("medExamTp"));   
			 kw30000u2200vo.setMedExamStrDd((String)jsonObj.get("medExamStrDd"));  
			 kw30000u2200vo.setMedExamEndDd((String)jsonObj.get("medExamEndDd"));  
			 
			 if (!jsonObj.has("medExamSeq")) {
				 int insertNum = kw30000u2200Service.KW30000U2200insertSave(kw30000u2200vo);
				
			 }else {
				 kw30000u2200vo.setMedExamSeq(Integer.parseInt(jsonObj.get("medExamSeq").toString()));
				 System.out.println("여기 들어왔다.");
				 System.out.println("kw30000u2200vo" + kw30000u2200vo);
				 int updateNum = kw30000u2200Service.KW30000U2200updateSave(kw30000u2200vo);
			 }
	     }
	  }
	  
	  /* 히스토리내역 - 리스트 출력 */
		@RequestMapping("/KW30000U2200chkPop.do")
		public String KW30000U2200chkPop() throws Exception {
			return "page/KW30000/KW30000U2200chkPop";
		}
		
		/* Ajax 조회 */
		@ResponseBody
		@RequestMapping(value = "/KW30000U2200chkPopList", produces = "application/json")
		public ResponseEntity<HashMap<String, Object>> KW30000U2200chkPopList(
				// 페이징처리
				@RequestParam(required = false, defaultValue = "1") int page,
				@RequestParam(required = false, defaultValue = "1") int range
				// 검색키워드
				, @RequestParam(required = false, defaultValue = "keyword") String searchType,
				@RequestParam(required = false) String keyword, @ModelAttribute("search") SearchHndlr search,
				HttpSession session) throws Exception {

			System.out.println("::::::::::::::::::" + search);
			HashMap<String, Object> result = new HashMap<>();
			// 세션값 가져오기
			LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
			String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호
			Paging paging = new Paging();
			
			if (popBzRgstNo == null) {
				search.setSearchBzRgstNo(authUser.getBzRgstNo());
				int listCnt = kw30000u2200Service.KW30000U2200chkPopCnt(search);
				paging.setCri(search);
				paging.setTotalCount(listCnt);
			} else {
				search.setSearchBzRgstNo(popBzRgstNo);
				int listCnt = kw30000u2200Service.KW30000U2200chkPopCnt(search);
				paging.setCri(search);
				paging.setTotalCount(listCnt);
			}
		
			// 페이징
			result.put("pagination", paging);
			// 게시글 화면 출력
			result.put("resultList", kw30000u2200Service.KW30000U2200chkPopList(search));

			return ResponseEntity.ok(result);
		}

  
}

