package iohp.page.KW20000.web.U1000;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW20000.service.KW20000U1500Service;
import iohp.page.KW20000.service.KW20000U1500VO;


/**
 * 
 */

@RequestMapping("/page/KW20000")
@Controller
public class KW20000U1500Controller {
	
	@Resource(name = "KW20000U1500Service")
	KW20000U1500Service kw2000u1500Service;
	
	@RequestMapping("/KW20000U1500.do")
	public String kw20000u1500Do(Model model) throws Exception {		
		model.addAttribute("act", "KW20000U0000");
		model.addAttribute("act2", "KW20000U1000");
		model.addAttribute("act3", "KW20000U1500");
		return "page/KW20000/KW20000U1500";
	}

	/* ajax리스트 */
	@RequestMapping(value = "/KW20000U1500List", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> kw20000u1500List(@ModelAttribute SearchHndlr search) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		int listCnt = kw2000u1500Service.getBoardListCnt(search);
		
		Paging paging = new Paging();
		paging.setCri(search);
		paging.setTotalCount(listCnt);
		/*화면 넘길값*/
		result.put("pagination", paging);
		result.put("resultList", kw2000u1500Service.kw20000u1500selectList(search));
		
		return ResponseEntity.ok(result);
	}
	
	/* 글쓰기 - 폼이동 */
	@RequestMapping("/KW20000U1500_write.do")
	public String kw2000u1500InsertForm(Model model) throws Exception{
		
		model.addAttribute("act", "KW20000U1500");
		
		return "page/KW20000/KW20000U1500_write";
	}

	/* 표지판 글쓰기 */
	@RequestMapping("/KW20000U1500_write")
	public String kw2000u1500Insert(@ModelAttribute KW20000U1500VO kw20000u1500VO, MultipartHttpServletRequest mtfRequest, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		kw20000u1500VO.setMbrNm(authUser.getMbrNm());
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
	               if(!safeFile.isEmpty()) kw20000u1500VO.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile );
	               if(!safeFile.isEmpty()) kw20000u1500VO.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);    
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
        	}
	     }
		
		kw2000u1500Service.kw20000u1500Insert(kw20000u1500VO);
		
		return "redirect:/page/KW20000/KW20000U1500.do";
	}

	/* 상세보기 */
	@RequestMapping("/KW20000U1500View")
	public String kw2000u1500View(@ModelAttribute KW20000U1500VO kw20000u1500VO,Model model, HttpServletRequest req)throws Exception {
		
		model.addAttribute("act", "KW20000U1500");
		
		int contentId = Integer.parseInt(req.getParameter("contentId"));
		kw20000u1500VO.setContentId(contentId);
		
		model.addAttribute("resultView1", kw2000u1500Service.kw20000u1500View(contentId));
		
		return "page/KW20000/KW20000U1500_view";
	}

	/* 수정 폼 */
	@RequestMapping("/KW20000U1500Update.do/{contentId}")
	public String kw2000u1500UpdateForm(@PathVariable int contentId, Model model) throws Exception {
		model.addAttribute("act", "KW20000U1500");
		
		model.addAttribute("resultView1", kw2000u1500Service.kw20000u1500UpdateForm(contentId));
		
		return "page/KW20000/KW20000U1500_update";
	}
	/*수정 확인*/
	@RequestMapping("/KW20000U1500Update")
	public String kw2000u1500Update(@ModelAttribute KW20000U1500VO kw20000u1500VO, MultipartHttpServletRequest mtfRequest, HttpSession session) throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		kw20000u1500VO.setMbrNm(authUser.getMbrNm());
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
						kw20000u1500VO.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);
						kw20000u1500VO.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile);
					} else {
						kw20000u1500VO.setBoardFileName(fileName += originFileName);
						if(!originFileName.isEmpty())kw20000u1500VO.setBoardFile(filePath += safeFile);
					}
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			
		}
		
		kw2000u1500Service.kw20000u1500Update(kw20000u1500VO);
		
		int contentId = kw20000u1500VO.getContentId();
		
		return "redirect:/page/KW20000/KW20000U1500View?contentId=" + contentId;
	}
	
	/*글 - 삭제*/
	@RequestMapping("/KW20000U1500Delete/{contentId}")
	public String kw2000u1500Delete(@PathVariable int contentId) throws Exception {
		kw2000u1500Service.kw20000u1500Delete(contentId);
		return "redirect:/page/KW20000/KW20000U1500.do";
	}
}
