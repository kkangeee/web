package iohp.page.KW30000.web.U5000;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.customer.service.CustomerVO;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5200Service;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U5200Controller {
	
	@Resource(name="KW30000U5200Service")
	private KW30000U5200Service kw300000u5200Service;
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW30000U5200.do")
	public String KW30000U5200do(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		System.out.println("==================in");
		model.addAttribute("act", "KW30000U5200");
		return "page/KW30000/KW30000U5200";
	}
	
	/* Ajax 리스트 조회 */
	@ResponseBody
	@RequestMapping(value="/KW30000U5200selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U5200List(
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
			int listCnt = kw300000u5200Service.KW30000U5200selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			// 전체 게시글 개수를 얻어와 listCnt에 저장
			int listCnt = kw300000u5200Service.KW30000U5200selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw300000u5200Service.KW30000U5200select(search));
		
		return ResponseEntity.ok(result);
	}
	
	/* Ajax 추가 & 저장 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U5200save.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U5200save(@ModelAttribute("kw30000u5200vo") KW30000U5000VO kw30000u5200vo, Model model,
			HttpServletRequest request, MultipartHttpServletRequest mtfRequest, HttpSession session) throws Exception {

		// 세션값 가져오기
		LoginVO authUser = (LoginVO) session.getAttribute("authUser"); // 로그인 정보
		String popBzRgstNo = (String) session.getAttribute("popBzRgstNo"); // 검색사업자번호
		
		if (popBzRgstNo == null) {
			kw30000u5200vo.setMbrNm(authUser.getMbrNm());
			kw30000u5200vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw30000u5200vo.setMbrNm(authUser.getMbrNm());
			kw30000u5200vo.setBzRgstNo(popBzRgstNo);
		}	
		System.out.println("@@@@@@@@@@@"+ kw30000u5200vo);
		String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		JSONArray jsonArray = new JSONArray(jsonS);
		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);

			kw30000u5200vo.setPrcsNm((String) jsonObj.get("prcsNm"));
			kw30000u5200vo.setTgtPplEmpeNo(Integer.parseInt(jsonObj.get("tgtPplEmpeNo").toString()));
			kw30000u5200vo.setTgtPplNm((String) jsonObj.get("tgtPplNm"));
			kw30000u5200vo.setEduMth((String) jsonObj.get("eduMth"));
			kw30000u5200vo.setEduSbjtNm((String) jsonObj.get("eduSbjtNm"));
			kw30000u5200vo.setEduImplStrDd((String) jsonObj.get("eduImplStrDd"));
			kw30000u5200vo.setEduInstNm((String) jsonObj.get("eduInstNm"));
			kw30000u5200vo.setCmpltnYn((String) jsonObj.get("cmpltnYn"));
			
		    List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile");
		    //String path = "/upload/files/";	 
		    String path = "/home/atos/tiohupload/files/";
	        String filePath = ""; 
	        String file = ""; 
	      
	        for (MultipartFile mf : fileList) {
	        	if(!mf.isEmpty()) {
		            String originFileName = mf.getOriginalFilename(); // 원본 파일 명       
		            String safeFile = path + System.currentTimeMillis() + originFileName;    
		            try {
		                mf.transferTo(new File(safeFile));
		               if(!safeFile.isEmpty()) kw30000u5200vo.setAtchFilePath(file += safeFile + "||");
		               if(!safeFile.isEmpty()) kw30000u5200vo.setAtchFileNm(filePath += originFileName.replaceAll("\\p{Z}","")+ "||");    
		            } catch (IllegalStateException e) {
		                e.printStackTrace();
		            } catch (IOException e) {
		                e.printStackTrace();
		            }
	        	}
	        }

			if (!jsonObj.has("seq")) {
				int insertNum = kw300000u5200Service.KW30000U5200insertSave(kw30000u5200vo);
			} else {
				kw30000u5200vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				int updateNum = kw300000u5200Service.KW30000U5200updateSave(kw30000u5200vo);
			}
		}

	}
	
	
	// btnY
	@RequestMapping(value = "/KW30000U5200btnYn", produces = "application/json")
	@ResponseBody
	public ResponseEntity<KW30000U5000VO> KW30000U5200btnYn(@RequestBody KW30000U5000VO kw30000u5200vo, HttpServletRequest req, HttpSession session) throws Exception {
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		kw30000u5200vo.setMbrNm(authUser.getMbrNm());
		kw300000u5200Service.KW30000U5200btnYn(kw30000u5200vo);
		
		return ResponseEntity.ok(kw30000u5200vo);
	}
	
	@RequestMapping("/KW30000U5200pop.do")
	public String KW30000U5200pop(Model model, HttpSession session, HttpServletRequest request)throws Exception {
		
		return "page/KW30000/KW30000U5200_pop";
	}

}
