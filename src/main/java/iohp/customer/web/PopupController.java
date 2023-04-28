package iohp.customer.web;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ibatis.common.logging.Log;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.customer.service.CustomerVO;
import iohp.customer.service.PopupService;
import iohp.login.service.LoginVO;


/**
 * 
 * 커스터머 컨트롤러
 * 
 * @author 송재원
 * @since 2022.08.24
 * @version 1.0
 * @see
 *
 *      <pre>
* << 개정이력(Modification Information) >>
*
*   수정일                  수정자			수정내용
*  --------------------------------------
*   2022.08.24		송재원		최초 생성
*   2022.11.09		송성빈		코드정리
 *
 *      @Controller
</pre>
 */
@RequestMapping("/customer/popup")
@Controller
public class PopupController {

	@Resource(name = "PopupService")
	private PopupService popupService;

	/**
	 * 팝업관리
	 * 
	 * @return
	 * @throws Exception
	 */
	
	@RequestMapping("/popup.do")
	public String popupDo(Model model) throws Exception {	
		model.addAttribute("act", "KW90000U0000");
		model.addAttribute("act2", "KW90000U4000");
		return "customer/popup";
	}
	
	/* 게시판 - ajax리스트 출력*/
	@RequestMapping(value = "/popupList.do", produces = "application/json")
	@ResponseBody
	public ResponseEntity<HashMap<String, Object>> popupList(@ModelAttribute SearchHndlr search) throws Exception {
		  HashMap<String, Object> result = new HashMap<>();
		
        Paging paging = new Paging();
        paging.setCri(search);
        
        int listCnt = popupService.getPopupListCnt(search);
        paging.setTotalCount(listCnt); 
      
		result.put("pagination", paging);
		result.put("resultList", popupService.selectList(search));
		return ResponseEntity.ok(result);
	}
		
	
	/* 글쓰기 - 폼이동 */
	@RequestMapping("/popup_write.do")
	public String popupInsertForm(Model model) throws Exception {
		model.addAttribute("act", "popup");
		return "customer/popup_write";
	}
	
	/* 등록 - 확인 */
	@RequestMapping("/write")
	public String popupInsert(@ModelAttribute CustomerVO customerVO, MultipartHttpServletRequest mtfRequest, HttpSession session)
			throws Exception{
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		customerVO.setMbrId(authUser.getMbrId());
		/*----------------*/
	    List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile");
	    String path = "/home/atos/tiohupload/files/";   
        String fileName = ""; 
        String filePath = ""; 
      
        for (MultipartFile mf : fileList) {
        	if(!mf.isEmpty()) {
	            String originFileName = mf.getOriginalFilename(); // 원본 파일 명       
	            String safeFile = path + System.currentTimeMillis() + originFileName;    
	            try {
	               mf.transferTo(new File(safeFile));                                    
	               if(!safeFile.isEmpty()) customerVO.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile );
	               if(!safeFile.isEmpty()) customerVO.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);    
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
        	}
        }
        popupService.popupInsert(customerVO);
		return "redirect:/customer/popup/popup.do";
	}	
		
	/* 글 - 수정 폼 이동 */
	@RequestMapping("/update.do/{popupId}")
	public String popupUpdateForm(@PathVariable int popupId, Model model) throws Exception {
		model.addAttribute("act", "popup");
		model.addAttribute("resultView1", popupService.popupUpdateForm(popupId));
		
		return "customer/popup_update";
	}
	
	/* 글 - 수정 확인  */
	@RequestMapping("/update")
	public String popupUpdate(@ModelAttribute CustomerVO customerVO, MultipartHttpServletRequest mtfRequest, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		customerVO.setMbrId(authUser.getMbrId());
		/*----------------*/
		
		List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile");
		
	    String path = "/home/atos/tiohupload/files/";
	    String filePath = mtfRequest.getParameter("filePaths"); 
        String fileName = mtfRequest.getParameter("files"); 
		for (MultipartFile mf : fileList) {
		
				String originFileName = mf.getOriginalFilename(); 
				String safeFile = path + System.currentTimeMillis() + originFileName;
				
				try {
					mf.transferTo(new File(safeFile));
					if (!mf.isEmpty()) {	
						customerVO.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);
						customerVO.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile);
					} else {
						customerVO.setBoardFileName(fileName += originFileName);
						if(!originFileName.isEmpty())customerVO.setBoardFile(filePath += safeFile);
					}
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
		
		popupService.popupUpdate(customerVO);
		
		return "redirect:/customer/popup/popup.do";
		//return "redirect:/customer/popup/view.do?contentId=" + customerVO.getContentId();
	}
	
	/* 글 - 삭제 */
	@RequestMapping("/delete/{popupId}")
	public String popupDelete(@PathVariable int popupId) throws Exception {

		popupService.popupDelete(popupId);

		return "redirect:/customer/popup/popup.do";
	}

}
