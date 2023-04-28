package iohp.page.KW60000.web;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
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
import iohp.page.KW60000.service.KW60000U4100Service;
import iohp.page.KW60000.service.KW60000VO;

@RequestMapping("/page/KW60000")
@Controller
public class KW60000U4100Controller {
	
	@Resource(name= "KW60000U4100Service")
	private KW60000U4100Service kw60000U4100Service;
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW60000U4100.do")
	public String kw60000U4100List(Model model) throws Exception{
		model.addAttribute("act", "KW60000U0000");
		model.addAttribute("act2", "KW60000U4000");
		return "page/KW60000/KW60000U4100";
	}
	
	/* 게시판 - ajax리스트 출력*/
	@RequestMapping(value = "/kw60000U4100List.do", produces = "application/json")
	@ResponseBody
	public ResponseEntity<HashMap<String, Object>> kw60000U4100List(@ModelAttribute SearchHndlr search) throws Exception {
		
		// 페이징 객체 - 추가
        Paging paging = new Paging();
        paging.setCri(search);
        
        // 전체 게시글 개수를 얻어와 listCnt에 저장
     	int listCnt = kw60000U4100Service.getBoardListCnt(search);
        paging.setTotalCount(listCnt); 
        
        HashMap<String, Object> result = new HashMap<>();
		result.put("pagination", paging);
		result.put("resultList", kw60000U4100Service.selectList(search));

		return ResponseEntity.ok(result);
	}
		
	/* 제목 클릭 시 상세보기 - 글상세보기 */
	@RequestMapping("/KW60000U4100view.do")
	public String kw60000U4100View(@ModelAttribute KW60000VO kw60000u4100vo, Model model, HttpServletRequest req) throws Exception {
		
		//해당 게시물 번호 받아오기      
        int contentId = Integer.parseInt(req.getParameter("contentId")); 
		
		model.addAttribute("act", "KW60000U4100");
        model.addAttribute("resultView1", kw60000U4100Service.kw60000U4100View(contentId));
		  			          
		return "page/KW60000/KW60000U4100_view";
	}
	
	/* 글쓰기 - 폼이동 */
	@RequestMapping("/KW60000U4100_write.do")
	public String kw60000U4100InsertForm(Model model) throws Exception {
		model.addAttribute("act", "KW60000U4100");
		return "page/KW60000/KW60000U4100_write";
	}
	
	/* 글쓰기 - 확인 */
	@RequestMapping("/KW60000U4100write")
	public String kw60000U4100Insert(@ModelAttribute KW60000VO kw60000u4100vo, HttpSession session, MultipartHttpServletRequest mtfRequest, RedirectAttributes rttr)
			throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		kw60000u4100vo.setMbrNm(authUser.getMbrNm());
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
	               if(!safeFile.isEmpty()) kw60000u4100vo.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile );
	               if(!safeFile.isEmpty()) kw60000u4100vo.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);    
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
        	}
        }
        
		kw60000U4100Service.kw60000U4100Insert(kw60000u4100vo);
		
		return "redirect:/page/KW60000/KW60000U4100.do";
	}
		
	/* 글 - 수정 폼 이동 */
	@RequestMapping("/KW60000U4100update.do/{contentId}")
	public String kw60000U4100UpdateForm(@PathVariable int contentId, Model model) throws Exception {
		model.addAttribute("act", "KW60000U4100");
		model.addAttribute("resultView1", kw60000U4100Service.kw60000U4100UpdateForm(contentId));
		
		return "page/KW60000/KW60000U4100_update";
	}
	
	/* 글 - 수정 확인  */
	@RequestMapping("/KW60000U4100update")
	public String kw60000U4100Update(@ModelAttribute KW60000VO kw60000u4100vo, MultipartHttpServletRequest mtfRequest, HttpSession session)
			throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		kw60000u4100vo.setMbrNm(authUser.getMbrNm());
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
						kw60000u4100vo.setBoardFileName(fileName += (fileName == "" ? "" : "||") + originFileName);
						kw60000u4100vo.setBoardFile(filePath += (filePath == "" ? "" : "||") + safeFile);
					} else {
						kw60000u4100vo.setBoardFileName(fileName += originFileName);
						if(!originFileName.isEmpty())kw60000u4100vo.setBoardFile(filePath += safeFile);
					}
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
        
		kw60000U4100Service.kw60000U4100Update(kw60000u4100vo);
		
		return "redirect:/page/KW60000/KW60000U4100view.do?contentId=" + kw60000u4100vo.getContentId();
	}
	
	/* 글 - 삭제 */
	@RequestMapping("/KW60000U4100delete/{contentId}")
	public String kw60000U4100Delete(@PathVariable int contentId) throws Exception {
		
		kw60000U4100Service.kw60000U4100Delete(contentId);
		
		return "redirect:/page/KW60000/KW60000U4100.do";
	}
		

}
