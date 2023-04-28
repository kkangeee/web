package iohp.com.web;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.com.service.CommonPopService;
import iohp.customer.service.CustomerVO;
import iohp.login.service.LoginVO;

/**
 * 
 * 커스터머 컨트롤러
 * 
 * @author 송성빈
 * @since 2022.08.24
 * @version 1.0
 * @see
 *
 *      <pre>
* << 개정이력(Modification Information) >>
*
*   수정일                  수정자			수정내용
*  --------------------------------------
*   2022.08.24		송재원			최초 생성
 *
 *      </pre>
 */

@RequestMapping("/common/pop")
@Controller
public class CommonPopController {
	
	
	@Resource(name = "CommonPopService")
	private CommonPopService commonPopService;
	/**
	 * PopService
	 * 
	 * @return
	 * @throws Exception
	 */
	
	
	/* 팝업 - 리스트 출력*/
	@RequestMapping("/pop.do")
	public String pop(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		return "include/commonpop";
	}

	@RequestMapping(value = "/popList.do", produces = "application/json")
	@ResponseBody
	public ResponseEntity<HashMap<String, Object>> popList(
			 @RequestParam(required = false, defaultValue = "1") int page
				,@RequestParam(required = false, defaultValue = "1") int range
				,@RequestParam(required = false, defaultValue = "keyword") String searchType
				,@RequestParam(required = false) String keyword
				,@ModelAttribute("search") SearchHndlr search) throws Exception {

		HashMap<String, Object> result = new HashMap<>();

		// 전체 게시글 개수를 얻어와 listCnt에 저장
		int listCnt = commonPopService.getBoardListCnt(search);
		
		// 페이징 객체 - 추가
        Paging paging = new Paging();
        paging.setCri(search);
        paging.setTotalCount(listCnt); 
		// 페이징
		result.put("pagination", paging);
		
		// 게시글 화면 출력
		result.put("resultList", commonPopService.selectList(search));
		
		return new ResponseEntity<HashMap<String, Object>>(result, HttpStatus.OK);
	}
	
	// 팝업 검색값 
	@RequestMapping(value = "/popList2.do", produces = "application/json")
	@ResponseBody
	public ResponseEntity<HashMap<String, Object>> pop2(
			@RequestParam(required = false) String bzRgstNo, 
			@RequestParam(required = false) String bzCoNm,
			HttpServletRequest req, HttpSession session, LoginVO loginVO) throws Exception {
		
		session.setAttribute("popBzRgstNo", bzRgstNo);
		session.setAttribute("popBzCoNm", bzCoNm);
		System.out.println("@@@@@@@@@@@" +bzRgstNo + bzCoNm );
		HashMap<String, Object> result = new HashMap<>();
				
		return new ResponseEntity<HashMap<String, Object>>(result, HttpStatus.OK);
	}
	
	


}
