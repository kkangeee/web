package iohp.page.KW30000.web.U5000;

import java.util.HashMap;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5320Service;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U5320Controller {
	@Resource(name ="KW30000U5320Service")
	private KW30000U5320Service kw300000u5320Service;
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW30000U5320.do")
	public String KW30000U5320Do(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U5320";
	}
	
	/* Ajax 리스트 조회 */
	@ResponseBody
	@RequestMapping(value="/KW30000U5320selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U5320List(
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "keyword") String searchType,
			@RequestParam(required = false) String keyword, 
			@ModelAttribute("search") SearchHndlr search,
			HttpSession session)throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			// 전체 게시글 개수를 얻어와 listCnt에 저장
			int listCnt = kw300000u5320Service.KW30000U5320selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			// 전체 게시글 개수를 얻어와 listCnt에 저장
			int listCnt = kw300000u5320Service.KW30000U5320selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw300000u5320Service.KW30000U5320select(search));
		
		return ResponseEntity.ok(result);
	}
	
	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U5320delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U5320delete(@ModelAttribute("kw30000u5320vo") KW30000U5000VO kw30000u5320vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u5320vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u5320vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 kw30000u5320vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw300000u5320Service.KW30000U5320delete(kw30000u5320vo);
	    }
	    
	}

	/* Ajax 추가 & 저장 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U5320save.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U5320save(@ModelAttribute("kw30000u5320vo") KW30000U5000VO kw30000u5320vo, Model model,
			HttpServletRequest request, HttpSession session,
			@RequestPart(value = "file",required = false) List<MultipartFile> fileList) throws Exception {
		
		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호
	
		kw30000u5320vo.setMbrNm(authUser.getMbrNm());
		
		if (popBzRgstNo == null) {
			kw30000u5320vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw30000u5320vo.setBzRgstNo(popBzRgstNo);
		}	
		
		String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		JSONArray jsonArray = new JSONArray(jsonS);
		System.out.println("@@@@@@@@@@@@@@@@" + jsonArray);
		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);

			kw30000u5320vo.setPrcsNm((String) jsonObj.get("prcsNm"));
			kw30000u5320vo.setTgtPplEmpeNo(Integer.parseInt(jsonObj.get("tgtPplEmpeNo").toString()));
			kw30000u5320vo.setTgtPplNm((String) jsonObj.get("tgtPplNm"));
			
			if (!jsonObj.has("seq")) {
				int insertNum = kw300000u5320Service.KW30000U5320insertSave(kw30000u5320vo);
			} else {
				kw30000u5320vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				int updateNum = kw300000u5320Service.KW30000U5320updateSave(kw30000u5320vo);
			}
		}

	}
}
