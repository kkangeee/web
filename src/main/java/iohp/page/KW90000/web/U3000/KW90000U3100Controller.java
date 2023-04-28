package iohp.page.KW90000.web.U3000;

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
import iohp.page.KW90000.service.KW90000U3100Service;
import iohp.page.KW90000.service.KW90000U3100VO;

@RequestMapping("/page/KW90000")
@Controller
public class KW90000U3100Controller {
	@Resource(name = "KW90000U3100Service")
	private KW90000U3100Service KW90000U3100Service;
	
	@RequestMapping("/KW90000U3100.do")
	public String KW90000U3100pageList(@ModelAttribute("kw90000u3100vo") KW90000U3100VO kw90000u3100vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW90000");
		return "page/KW90000/KW90000U3100";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW90000U3100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW90000U3100List(
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
		
		Paging paging = new Paging();

		search.setSearchMbrId(authUser.getMbrId());
		int listCnt = KW90000U3100Service.KW90000U3100selectCnt(search);
        paging.setCri(search);
        paging.setTotalCount(listCnt);

		// 페이징
		result.put("pagination", paging);		
		// 게시글 화면 출력
		result.put("resultList", KW90000U3100Service.KW90000U3100select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW90000U3100delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW90000U3100delete(@ModelAttribute("kw90000u3100vo") KW90000U3100VO kw90000u3100vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("kw90000u3100vo data" + request.getParameter("data"));
		 
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		kw90000u3100vo.setMbrId(authUser.getMbrId());

		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw90000u3100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += KW90000U3100Service.KW90000U3100delete(kw90000u3100vo);
	    }

		// select 다시 실행
		// List<KW30000U7100VO> resultList1 = KW90000U3100Service.KW90000U3100pageList(kw30000u7100vo);
        //리턴을 안하고,  ajax(jsp)에서 성공시, 다시 조회를 한다.
		//return resultList1;
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW90000U3100save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW90000U3100save(@ModelAttribute("kw90000u3100vo") KW90000U3100VO kw90000u3100vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	  
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		kw90000u3100vo.setMbrId(authUser.getMbrId());
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("KW90000U3100save" + jsonS);
	     System.out.println("KW90000U3100save data " + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	    	 kw90000u3100vo.setMenuId((String)jsonObj.get("menuId")); 
	    	 kw90000u3100vo.setMenuNm((String)jsonObj.get("menuNm"));
	    	 kw90000u3100vo.setHgRkMenuId((String)jsonObj.get("hgRkMenuId"));
	    	 kw90000u3100vo.setFoldYn((String)jsonObj.get("foldYn"));
	    	 kw90000u3100vo.setMenuShowYn((String)jsonObj.get("menuShowYn"));
	    	 kw90000u3100vo.setMenuOrd((String)jsonObj.get("menuOrd"));
	    	 kw90000u3100vo.setMenuLvl((String)jsonObj.get("menuLvl"));
	    	 kw90000u3100vo.setPgmId((String)jsonObj.get("pgmId"));
	    	 kw90000u3100vo.setProgramId("KW90000U3100");
			 if (!jsonObj.has("seq")) {
				 int insertNum = KW90000U3100Service.KW90000U3100insertSave(kw90000u3100vo);
				
			 }else {
				 kw90000u3100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int updateNum = KW90000U3100Service.KW90000U3100updateSave(kw90000u3100vo);
			 }
	     }
	     
	  
	  }
	

  
}

