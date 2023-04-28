package iohp.page.KW30000.web.U5000;

import java.io.File;
import java.util.HashMap;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.customer.service.CustomerVO;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U5400Service;
import iohp.page.KW30000.service.KW30000U1310VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U5400Controller {
	
	@Resource(name= "KW30000U5400Service")
	private KW30000U5400Service kw30000U5400Service;
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW30000U5400.do")
	public String kw30000U5400List(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		System.out.println("==================in");
		model.addAttribute("act", "KW30000U5400");
		return "page/KW30000/KW30000U5400";
	}
	
	/* 게시판 - ajax리스트 출력*/
	@RequestMapping(value = "/KW30000U5400selectList", produces = "application/json")
	@ResponseBody
	public ResponseEntity<HashMap<String, Object>> kw30000U5400ListDo(
				 @RequestParam(required = false, defaultValue = "1") int page
				,@RequestParam(required = false, defaultValue = "1") int range
				,@RequestParam(required = false, defaultValue = "keyword") String searchType
				,@RequestParam(required = false) String keyword
				,@ModelAttribute("search") SearchHndlr search) throws Exception {

		HashMap<String, Object> result = new HashMap<>();
		Paging paging = new Paging();
		// 전체 게시글 개수를 얻어와 listCnt에 저장
		int listCnt = kw30000U5400Service.KW30000U5400selectCnt(search);
		paging.setCri(search);
        paging.setTotalCount(listCnt);
		
		// 페이징
		result.put("pagination", paging);

		// 게시글 화면 출력
		result.put("resultList", kw30000U5400Service.KW30000U5400select(search));

		return ResponseEntity.ok(result);
	}
	
	// HttpServletRequest 객체안에 모든 데이터들이 들어가는데 getParameter메소드로 testId 원하는 데이터 가져옴
		/* 제목 클릭 시 상세보기 - 글상세보기 */
		@RequestMapping("/KW30000U5400view")
		public String kw30000U5400View(@ModelAttribute KW30000U1310VO kw30000u1310vo, Model model, HttpServletRequest req, HttpServletResponse response)
				throws Exception {
		
			//해당 게시물 번호 받아오기      
	        int contentId = Integer.parseInt(req.getParameter("contentId")); 
	        
	        KW30000U1310VO kw30000u1310vo1 = kw30000U5400Service.kw30000U5400View(contentId);
	        model.addAttribute("resultView1", kw30000u1310vo1);
			  			          
			return "page/KW30000/KW30000U5400_view";
		}
		
		/* 글쓰기 - 폼이동 */
		@RequestMapping("/KW30000U5400_write.do")
		public String kw30000U5400InsertForm(@ModelAttribute("kw30000u1310vo") KW30000U1310VO kw30000u1310vo, HttpServletRequest req, Model model)
				throws Exception {
		
			return "page/KW30000/KW30000U5400_write";
		}
		
		/* 글쓰기 - 확인 */
		@RequestMapping("/KW30000U5400write")
		public String kw30000U5400Insert(@ModelAttribute KW30000U1310VO kw30000u1310vo, HttpSession session, RedirectAttributes rttr)
				throws Exception {
			
			/*---세션 사용자 입력---*/
			//LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
			//kw30000u1310vo.setMbrId(authUser.getMbrId());
			/*----------------*/
			
			String BoardFile = null;
			MultipartFile uploadFile = kw30000u1310vo.getUploadFile();
			if (!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename();
				String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
				UUID uuid = UUID.randomUUID(); // UUID 구하기
				BoardFile = uuid + "." + ext;
				//uploadFile.transferTo(new File("/home/atos/tiohpupload" + BoardFile));
				uploadFile.transferTo(new File("C:\\img\\" + BoardFile));
			}
				
			kw30000u1310vo.setBoardFileName(uploadFile.getOriginalFilename());	
			kw30000u1310vo.setBoardFileName(BoardFile);

			kw30000U5400Service.kw30000U5400Insert(kw30000u1310vo);
			
			return "redirect:/page/KW30000/KW30000U5400.do";
		}
		
		/* 글 - 수정 폼 이동 */
		@RequestMapping("/KW30000U5400updateForm/{contentId}")
		public String kw30000U5400UpdateForm(@PathVariable("contentId") int contentId, Model model, HttpServletRequest req)
				throws Exception {

			KW30000U1310VO kw30000u1310vo = kw30000U5400Service.kw30000U5400UpdateForm(contentId);
			
			model.addAttribute("resultView1", kw30000u1310vo);
			
			return "page/KW30000/KW30000U5400_update";
		}
		
		/* 글 - 수정 확인  */
		@RequestMapping("/KW30000U5400update")
		public String kw30000U5400Update(@ModelAttribute KW30000U1310VO kw30000u1310vo, Model model, RedirectAttributes rttr, HttpSession session)
				throws Exception {
			
			String BoardFileName = null;
			MultipartFile uploadFile = kw30000u1310vo.getUploadFile();
			if (!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename();
				String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
				UUID uuid = UUID.randomUUID(); // UUID 구하기
				BoardFileName = uuid + "." + ext;
				uploadFile.transferTo(new File("C:\\upload\\" + BoardFileName));
			}
			
			kw30000u1310vo.setBoardFileName(BoardFileName);
			
			kw30000U5400Service.kw30000U5400Update(kw30000u1310vo);
			
			//int contentId = kw30000u1310vo.getContentId(); //수정확인후 해당 페이지로 이동을 위해 contentId return 
			
			return "redirect:/page/KW30000/KW30000U5400view?contentId=";
		}
		
		/* 글 - 삭제 */
		@RequestMapping("/KW30000U5400delete/{contentId}")
		public String kw30000U5400Delete(@PathVariable("contentId") int contentId, KW30000U1310VO kw30000u1310vo, Model model, HttpServletRequest req)
				throws Exception {
			
			kw30000U5400Service.kw30000U5400Delete(contentId);
			
			return "redirect:/page/KW30000/KW30000U5400.do";
		}
	
		

}
