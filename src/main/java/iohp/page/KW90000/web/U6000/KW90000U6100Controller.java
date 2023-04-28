package iohp.page.KW90000.web.U6000;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U1110Service;
import iohp.page.KW30000.service.KW30000U1110VO;
import iohp.page.KW90000.service.KW90000U1100Service;
import iohp.page.KW90000.service.KW90000U6100Service;

@RequestMapping("/page/KW90000")
@Controller
public class KW90000U6100Controller {
	@Resource(name = "KW90000U6100Service")
	private KW90000U6100Service kw90000u6100Service;

	@Resource(name = "KW90000U1100Service")
	private KW90000U1100Service kw90000u1100Service;
	
	@RequestMapping("/KW90000U6100.do")
	public String KW90000U1100pageList(Model model) throws Exception {
		model.addAttribute("act", "KW90000U0000");
		model.addAttribute("act2", "KW90000U1000");
		return "page/KW90000/KW90000U6100";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW90000U6100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW90000U6100List(@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		
    	HashMap<String, Object> result = new HashMap<>();
		result.put("resultList", kw90000u6100Service.KW90000U6100select(search));
		System.out.println("result ::: " + result);	
		return ResponseEntity.ok(result);
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW90000U6100infoList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW90000U6100infoList(@ModelAttribute("search") SearchHndlr search, HttpSession session,LoginVO loginVo) throws Exception {
		HashMap<String, Object> result = new HashMap<>();
		result.put("infoList", kw90000u6100Service.KW90000U6100infoList(search));
		result.put("codeMngList", kw90000u1100Service.codeMngList(search));
		System.out.println("result :: " + result);
		return ResponseEntity.ok(result);
	}
	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW90000U6100save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW90000U6100save(@ModelAttribute("loginVo") LoginVO loginVo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
	 
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("saveBtn data ::" + request.getParameter("data"));
	     System.out.println("saveBtn jsonS::" + jsonS);
	     JSONArray jsonArray = new JSONArray(jsonS);
	     
	     
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
		     
	    	 loginVo.setBzRgstNo((String) jsonObj.get("bzRgstNo")); 
		     loginVo.setMbrId((String) jsonObj.get("mbrId")); 
		     loginVo.setPswd((String) jsonObj.get("pswd")); 
		     loginVo.setMbrNm((String) jsonObj.get("mbrNm")); 
		     loginVo.setBzCoNm((String) jsonObj.get("bzCoNm")); 
		     loginVo.setBdt((String) jsonObj.get("bdt")); 
		     loginVo.setFonNo((String) jsonObj.get("fonNo")); 
		     loginVo.setGndrTp((String) jsonObj.get("gndrTp"));
		     loginVo.setRoleAuthId((String) jsonObj.get("roleAuthId"));
		     loginVo.setMbrAprvYn((String) jsonObj.get("mbrAprvYn")); 
		     loginVo.setMbrSeq(Integer.parseInt(jsonObj.get("mbrSeq").toString()));

	     System.out.println("loginVo :: " + loginVo);
	     int updateNum = kw90000u6100Service.KW90000U6100updateSave(loginVo);
	    }
	  }
}

  

