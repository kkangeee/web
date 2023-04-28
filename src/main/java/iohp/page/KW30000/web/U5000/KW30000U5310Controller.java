package iohp.page.KW30000.web.U5000;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.customer.service.CustomerVO;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U5000VO;
import iohp.page.KW30000.service.KW30000U5310Service;


/**
 * 
 * 커스터머 컨트롤러
 * 
 * @author 송성빈
 * @since 2022.11.09
 * @version 1.0
 * @see
 *
 *<pre>
* << 개정이력(Modification Information) >>
*
*   수정일                  	수정자			수정내용
*  ----------------------------------------
*   2022.11.09		송성빈			최초 생성
 *
 *      @Controller
</pre>
 */

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U5310Controller {
	
	@Resource(name= "KW30000U5310Service")
	private KW30000U5310Service kw30000U5310Service;
	
	/**
	 * 보건관리  > 교육관리 > 교육계획/실시 등록
	 * 
	 * @return
	 * @throws Exception
	 */

	@RequestMapping("/KW30000U5310.do")
	public String notice_list(Model model) throws Exception {
		model.addAttribute("act", "KW30000U5310");
		return "page/KW30000/KW30000U5310";
	}

	@RequestMapping(value = "/KW30000U5310List.do", produces = "application/json")
	@ResponseBody
	public ResponseEntity<HashMap<String, Object>> kw30000U5310List(
			@ModelAttribute("search") SearchHndlr search, HttpSession session)
			throws Exception {

		HashMap<String, Object> result = new HashMap<>();

		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			// 전체 게시글 개수를 얻어와 listCnt에 저장
			int listCnt = kw30000U5310Service.getBoardListCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
			
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000U5310Service.getBoardListCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		
		// 페이징
		result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw30000U5310Service.selectList(search));

		return ResponseEntity.ok(result);
	}
	
	/* 제목 클릭 시 상세보기 - 글상세보기 */
	@RequestMapping("/KW30000U5310view.do")
	public String noticeView(KW30000U5000VO kw30000u5310vo, Model model, HttpServletRequest req)
			throws Exception {
		//네비 클릭 가이드
		model.addAttribute("act", "KW30000U5310");
		//해당 게시물 번호 받아오기      
        int contentId = Integer.parseInt(req.getParameter("contentId")); 
        kw30000u5310vo.setContentId(contentId);
		
        KW30000U5000VO resultVO = kw30000U5310Service.kw30000u5310View(contentId);
        model.addAttribute("resultView1", resultVO);
		  	              
		return "page/KW30000/KW30000U5310_view";
	}
	
	/* 글쓰기 - 폼이동 */
	@RequestMapping("/KW30000U5310_write.do")
	public String KW30000U5310writeDo(Model model)
			throws Exception {
		//네비 클릭 가이드
		model.addAttribute("act", "notice");
		return "page/KW30000/KW30000U5310_write";
	}
	
	/* 글쓰기 - 확인 */
	@RequestMapping("/KW30000U5310write")
	public String KW30000U5310Write(KW30000U5000VO kw30000u5310vo, MultipartHttpServletRequest mtfRequest, HttpSession session) throws Exception{
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO) session.getAttribute("authUser");
		kw30000u5310vo.setMbrNm(authUser.getMbrNm());
		kw30000u5310vo.setBzRgstNo(authUser.getBzRgstNo());
		/*----------------*/

		List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile");
	    //String path = "/upload/files/";	 
	    String path = "/home/atos/tiohupload/files/";
        String fileName = ""; 
        String filePath = ""; 
      
        for (MultipartFile mf : fileList) {
        	if(!mf.isEmpty()) {
	            String originFileName = mf.getOriginalFilename(); // 원본 파일 명       
	            String safeFile = path + System.currentTimeMillis() + originFileName;    
	            try {
	               mf.transferTo(new File(safeFile));
	               if(!safeFile.isEmpty()) kw30000u5310vo.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile );
	               if(!safeFile.isEmpty()) kw30000u5310vo.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);    
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
        	}
        }
        
		kw30000U5310Service.kw30000u5310Insert(kw30000u5310vo);

		return "redirect:/page/KW30000/KW30000U5310.do";
	}
	
	/*글 - 수정 폼 이동*/
	@RequestMapping("/KW30000U5310update.do/{contentId}")
	public String KW30000U5310UpdateForm(@PathVariable("contentId")int contentId, Model model)throws Exception {
		
		
		KW30000U5000VO kw30000u5000vo = kw30000U5310Service.kw30000u5310UpdateForm(contentId);
		
		//네비 클릭 가이드
		model.addAttribute("act", "KW30000U5310");
		//수정 리스트
		model.addAttribute("resultView1", kw30000u5000vo);
		
		return "page/KW30000/KW30000U5310_update";
	}
	
	/* 글 - 수정 확인  */
	@RequestMapping("/KW30000U5310update")
	public String KW30000U5310Update(KW30000U5000VO kw30000u5310vo, MultipartHttpServletRequest mtfRequest, HttpSession session)
			throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		kw30000u5310vo.setMbrNm(authUser.getMbrNm());
		/*----------------*/
		
		List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile");
	    //String path = "/upload/files/";	 
	    String path = "/home/atos/tiohupload/files/";
	    String filePath = mtfRequest.getParameter("filePaths"); 
        String fileName = mtfRequest.getParameter("files"); 
		for (MultipartFile mf : fileList) {
		
				String originFileName = mf.getOriginalFilename(); // 원본 파일 명
				String safeFile = path + System.currentTimeMillis() + originFileName;
				try {
					mf.transferTo(new File(safeFile));
					if (!mf.isEmpty()) {	
						kw30000u5310vo.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);
						kw30000u5310vo.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile);
					} else {
						kw30000u5310vo.setBoardFileName(fileName += originFileName);
						if(!originFileName.isEmpty())kw30000u5310vo.setBoardFile(filePath += safeFile);
					}
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			
		}
		
		kw30000U5310Service.kw30000u5310Update(kw30000u5310vo);
		
		int contentId = kw30000u5310vo.getContentId(); //수정확인후 해당 페이지로 이동을 위해 contentId return 
		
		return "redirect:/page/KW30000/KW30000U5310view.do?contentId=" + contentId;
	}
	
	/*글  - 삭제*/
	@RequestMapping("/KW30000U5310Delete/{contentId}")
	public String KW30000U5310Delete(@PathVariable int contentId)throws Exception {
		
		kw30000U5310Service.kw30000u5310Delete(contentId);
		
		return "redirect:/page/KW30000/KW30000U5310.do";
	}
}
