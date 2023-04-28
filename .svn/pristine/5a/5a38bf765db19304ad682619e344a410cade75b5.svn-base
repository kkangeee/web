package iohp.page.KW90000.web.U1000;

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
import iohp.page.KW90000.service.KW90000U1100Service;
import iohp.page.KW90000.service.KW90000U1100VO;

@RequestMapping("/page/KW90000")
@Controller
public class KW90000U1100Controller {
	@Resource(name = "KW90000U1100Service")
	private KW90000U1100Service kw90000u1100Service;
	
	@RequestMapping("/KW90000U1100.do")
	public String KW90000U1100pageList(Model model) throws Exception {
		model.addAttribute("act", "KW90000U0000");
		model.addAttribute("act2", "KW90000U1000");
		return "page/KW90000/KW90000U1100";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW90000U1100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW90000U1100List(@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		
		Paging paging = new Paging();
		int listCnt = kw90000u1100Service.KW90000U1100selectCnt(search);
        paging.setCri(search);
        paging.setTotalCount(listCnt);
        
        
    	HashMap<String, Object> result = new HashMap<>();
		result.put("pagination", paging);		
		result.put("resultList", kw90000u1100Service.KW90000U1100select(search));
				
		return ResponseEntity.ok(result);
	}
	
	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW90000U1100delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW90000U1100delete(@ModelAttribute("kw90000u1100vo") KW90000U1100VO kw90000u1100vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw90000u1100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 kw90000u1100vo.setCdItem((String)jsonObj.getString("cdItem"));  
	    	 cnt += kw90000u1100Service.KW90000U1100delete(kw90000u1100vo);
	    }

	}
	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW90000U1100save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW90000U1100save(@ModelAttribute("kw90000u1100vo") KW90000U1100VO kw90000u1100vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	    	 kw90000u1100vo.setCdItemNm((String)jsonObj.get("cdItemNm"));   
	    	 kw90000u1100vo.setCdItem((String)jsonObj.get("cdItem"));   
	    	 kw90000u1100vo.setCdVal((String)jsonObj.get("cdVal"));   
	    	 kw90000u1100vo.setCdDtl1((String)jsonObj.get("cdDtl1"));   
	    	 kw90000u1100vo.setSort(Integer.parseInt(jsonObj.get("sort").toString()));   
	    	 kw90000u1100vo.setUseYn((String)jsonObj.get("useYn"));   
	    	 
			 if (!jsonObj.has("seq")) {
				 int insertNum = kw90000u1100Service.KW90000U1100insertSave(kw90000u1100vo);
				
			 }else {
				 kw90000u1100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 System.out.println("kw90000u1100vo" + kw90000u1100vo);
				 int updateNum = kw90000u1100Service.KW90000U1100updateSave(kw90000u1100vo);
			 }
	     }
	     
	  
	  }

  
}

