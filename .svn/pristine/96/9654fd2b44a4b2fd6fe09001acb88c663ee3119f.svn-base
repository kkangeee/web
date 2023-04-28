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
import iohp.page.KW30000.service.KW30000U1175Service;
import iohp.page.KW30000.service.KW30000U1175VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U1175Controller { 
	@Resource(name = "KW30000U1175Service")
	private KW30000U1175Service kw30000u1175Service;
	/*
	@RequestMapping("/KW30000U1175.do")
	public String KW30000U1175pageList(@ModelAttribute("kw30000u1175vo") KW30000U1175VO kw30000u1175vo, Model model,
			HttpSession session, HttpServletRequest request) throws Exception {
		List<KW30000U1175VO> resultList1 = kw30000u1175Service.KW30000U1175pageList(kw30000u1175vo);

		model.addAttribute("resultList1", resultList1);
		System.out.println("controller에서 resultList1의 값" + resultList1);
		return "page/KW30000/KW30000U1175";
	}
	*/
	
	@RequestMapping("/KW30000U1175.do")
	public String KW30000U1175pageList(@ModelAttribute("kw30000u1175vo") KW30000U1175VO kw30000u1175vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U1175";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1175selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U1175List(
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
					int listCnt = kw30000u1175Service.KW30000U1175selectCnt(search);
					paging.setCri(search);
			        paging.setTotalCount(listCnt);
				} else {
					search.setSearchBzRgstNo(popBzRgstNo);
					int listCnt = kw30000u1175Service.KW30000U1175selectCnt(search);
					paging.setCri(search);
			        paging.setTotalCount(listCnt);
				}
				
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw30000u1175Service.KW30000U1175select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1175delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1175delete(@ModelAttribute("kw30000u1175vo") KW30000U1175VO kw30000u1175vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u1175vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u1175vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw30000u1175vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u1175Service.KW30000U1175delete(kw30000u1175vo);
	    }

		// select 다시 실행
		// List<KW30000U1175VO> resultList1 = kw30000u1175Service.KW30000U1175pageList(kw30000u1175vo);
        //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
		//return resultList1;
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U1175save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U1175save(@ModelAttribute("kw30000u1175vo") KW30000U1175VO kw30000u1175vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u1175vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u1175vo.setBzRgstNo(popBzRgstNo);
			}
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	 	    
	    	 kw30000u1175vo.setWrkrNm((String)jsonObj.get("wrkrNm"));   
			 kw30000u1175vo.setUnitCoNm((String)jsonObj.get("unitCoNm"));  
			 kw30000u1175vo.setPrcsNm((String)jsonObj.get("prcsNm"));
			 kw30000u1175vo.setOcurDd((String)jsonObj.get("ocurDd"));
			 kw30000u1175vo.setOcurDtl((String)jsonObj.get("ocurDtl"));
			 kw30000u1175vo.setFrstAidDtl((String)jsonObj.get("frstAidDtl"));  
			 kw30000u1175vo.setTrnsfHsptlNm((String)jsonObj.get("trnsfHsptlNm"));  
			 kw30000u1175vo.setPstPrgsStus((String)jsonObj.get("pstPrgsStus"));  
			 kw30000u1175vo.setRmk((String)jsonObj.get("rmk"));  
			 //kw30000u1175vo.setEduVlidEndDd((String) jsonObj.get("eduVlidEndDd"));  
			 //kw30000u1175vo.setEduCertiPos((String) jsonObj.get("eduCertiPos"));  
			 //kw30000u1175vo.setWrkPlcMgtUniqNo((String) jsonObj.get("wrkPlcMgtUniqNo"));  
			 //kw30000u1175vo.setMbrId((String) jsonObj.get("mbrId"));  
			 
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw30000u1175Service.KW30000U1175insertSave(kw30000u1175vo);
				
			 }else {
				 kw30000u1175vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = kw30000u1175Service.KW30000U1175updateSave(kw30000u1175vo);
			 }
	     }
	     
		// select 다시 실행
		 // List<KW30000U1175VO> resultList1 = kw30000u1175Service.KW30000U1175pageList(kw30000u1175vo);
	   //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
	  
	  }
	

  
}

