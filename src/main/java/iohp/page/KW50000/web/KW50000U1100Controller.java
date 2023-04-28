package iohp.page.KW50000.web;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW50000.service.KW50000U1100Service;
import iohp.page.KW50000.service.KW50000U1100VO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@RequestMapping("/page/KW50000")
@Controller
public class KW50000U1100Controller {
	
	@Resource(name = "KW50000U1100Service")
	private KW50000U1100Service kw50000u1100Service;
	/**
	 * 기본 정보 관리
	 * 
	 * @return
	 * @throws Exception
	 */
	
	/* 스케줄 */
	@RequestMapping("/KW50000U1100.do")
	public String kw50000u1100Do(@ModelAttribute("searchVO") SearchHndlr searchVO, ModelMap model) throws Exception {

		model.addAttribute("act", "KW50000U0000");
		model.addAttribute("act2", "KW50000U1000");

		return "page/KW50000/KW50000U1100";
	}

	
	/* 스케줄리스트 */
    @ResponseBody
    @RequestMapping(value = "/KW50000U1100fullcalendarList", produces = "application/json")
    public ResponseEntity<JSONArray> kw50000u1100calendarList(@ModelAttribute("search") SearchHndlr search
			,HttpSession session)throws Exception {
	 
       /*---세션 사용자 입력---*/ 
	   LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
	   /*----------------*/
    	
	   search.setSearchBzRgstNo(authUser.getBzRgstNo());
	   List<KW50000U1100VO> result = kw50000u1100Service.KW50000U1100Select(search);
	   JSONArray jsonArr = new JSONArray();
	   JSONObject jsonObj = new JSONObject();
	   
       for(int i = 0; i < result.size(); i++) {
    	   jsonObj.put("id", result.get(i).getSeq());
    	   jsonObj.put("title", result.get(i).getTtl());
    	   
    	   if(result.get(i).getStrDt().substring(0, 10).equals(result.get(i).getEndDt().substring(0, 10))) {
    		   jsonObj.put("start", result.get(i).getStrDt());
        	   jsonObj.put("end", result.get(i).getEndDt());
    	   } else {
    		   jsonObj.put("start", result.get(i).getStrDt().substring(0, 10));
    		   Integer num = Integer.valueOf(result.get(i).getEndDt().substring(8, 10))+1;
        	   jsonObj.put("end", result.get(i).getEndDt().substring(0, 7) + "-" + (num > 10 ? num : "0" + num));
    	   }
    	   
    	   jsonArr.add(jsonObj);
       }
       
       return ResponseEntity.ok(jsonArr);
    }
    
	/* 입력 */
    @ResponseBody
	@RequestMapping(value = "/KW50000U1100Insert") 
    public void kw50000u1100Insert(@RequestBody KW50000U1100VO kw50000u1100vo, HttpServletRequest request, HttpSession session) throws Exception {
        
        /*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");
		
		kw50000u1100vo.setMbrNm(authUser.getMbrNm());
		kw50000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
		/*----------------*/
        
		kw50000u1100Service.KW50000U1100Insert(kw50000u1100vo);

    }
    
	/* 단건조회 */
    @RequestMapping(value = "/KW50000U1100View")
	@ResponseBody
    public ResponseEntity<KW50000U1100VO> kw50000u1100View(@RequestBody KW50000U1100VO kw50000u1100vo, HttpSession session) throws Exception{
      
        /*---세션 사용자 입력---*/ 
  	    LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
  	    kw50000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
  	    /*----------------*/
    	
  	    KW50000U1100VO result = kw50000u1100Service.KW50000U1100View(kw50000u1100vo);
    	return new ResponseEntity<KW50000U1100VO>(result, HttpStatus.OK);
    }
	/* 삭제 */
    @ResponseBody
    @RequestMapping(value = "/KW50000U1100Delete")
    public void kw50000u1100Delete(@RequestBody KW50000U1100VO kw50000u1100vo, HttpSession session)throws Exception {
    	
       /*---세션 사용자 입력---*/ 
 	   LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
 	   kw50000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
 	   /*----------------*/
       kw50000u1100Service.KW50000U1100Delete(kw50000u1100vo);
   
    }

	/* 수정 */
    @ResponseBody
    @RequestMapping(value = "/KW50000U1100Update")
    public void kw50000u1100Update(@RequestBody KW50000U1100VO kw50000u1100vo, HttpSession session)throws Exception{
    	
    	/*---세션 사용자 입력---*/ 
  	    LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
  	    kw50000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
  	    kw50000u1100vo.setMbrNm(authUser.getMbrNm());
  	    /*----------------*/
  	    kw50000u1100Service.KW50000U1100Update(kw50000u1100vo);
    }
    
    /* Drop수정 */
    @ResponseBody
    @RequestMapping(value = "/KW50000U1100Drop")
    public void kw50000u1100Drop(@RequestBody KW50000U1100VO kw50000u1100vo, HttpSession session)throws Exception{
    	
    	/*---세션 사용자 입력---*/ 
  	    LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
  	    kw50000u1100vo.setBzRgstNo(authUser.getBzRgstNo());
  	    kw50000u1100vo.setMbrNm(authUser.getMbrNm());
  	    /*----------------*/
  	    System.out.println(":::::" + kw50000u1100vo);
  	    DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
  	    LocalDateTime startDate = LocalDateTime.parse(kw50000u1100vo.getStrDt(), dateTimeFormatter);
  	    LocalDateTime endDate = LocalDateTime.parse(kw50000u1100vo.getEndDt(), dateTimeFormatter);
  	    String sdt = startDate.toString().replaceAll("T", " ");
  	    String edt = endDate.toString().replaceAll("T", " ");
  	    System.out.println(":::::" + sdt);
  	  	System.out.println(":::::" + edt);
  	   // kw50000u1100vo.setStrDt(sdt);
  	   // kw50000u1100vo.setEndDt(edt);
  	   // kw50000u1100Service.KW50000U1100Update(kw50000u1100vo);
    }
    
}
