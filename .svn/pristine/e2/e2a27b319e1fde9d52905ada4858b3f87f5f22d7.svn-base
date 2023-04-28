package iohp.page.KW30000.web.U1000;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U1110Service;
import iohp.page.KW30000.service.KW30000U1110VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U1110Controller {
	@Resource(name = "KW30000U1110Service")
	private KW30000U1110Service kw30000u1110Service;
	
	@RequestMapping("/KW30000U1110.do")
	public String KW30000U1110pageList(@ModelAttribute("kw30000u1110vo") KW30000U1110VO kw30000u1110vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U1110";
	}
	 
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1110selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U1110List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search, HttpSession session, @ModelAttribute("kw30000u1110vo") KW30000U1110VO kw30000u1110vo) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		//세션값 가져오기
				LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
				String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
				
				// 페이징 객체 - 추가
		        Paging paging = new Paging();
		        
				if(popBzRgstNo == null) {
					search.setSearchBzRgstNo(authUser.getBzRgstNo());
					int listCnt = kw30000u1110Service.KW30000U1110selectCnt(search);
					// 검색
			        paging.setCri(search);
			        paging.setTotalCount(listCnt); 
				} else {
					search.setSearchBzRgstNo(popBzRgstNo);
					int listCnt = kw30000u1110Service.KW30000U1110selectCnt(search);
			        paging.setCri(search);
			        paging.setTotalCount(listCnt); 
				}
				// 페이징
				result.put("pagination", paging);
		// 게시글 화면 출력
		result.put("resultList", kw30000u1110Service.KW30000U1110select(search));
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U1110delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U1110delete(@ModelAttribute("kw30000u1110vo") KW30000U1110VO kw30000u1110vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("delete data :: " + request.getParameter("data"));
		 System.out.println("delete jsonS :: " + jsonS);
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u1110vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u1110vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw30000u1110vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u1110Service.KW30000U1110delete(kw30000u1110vo);
	     }
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U1110save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U1110save(@ModelAttribute("kw30000u1110vo") KW30000U1110VO kw30000u1110vo, Model model, HttpServletRequest request, HttpSession session, MultipartHttpServletRequest mtfRequest, @ModelAttribute("search") SearchHndlr search) throws Exception{
	 
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		if(popBzRgstNo == null) {
			kw30000u1110vo.setBzRgstNo(authUser.getBzRgstNo());
		} else {
			kw30000u1110vo.setBzRgstNo(popBzRgstNo);
		}
		
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("saveBtn data ::" + request.getParameter("data"));
	     System.out.println("saveBtn jsonS::" + jsonS);
	     JSONArray jsonArray = new JSONArray(jsonS);
	     
	     String path = "/upload/files/";
	     String fileName = ""; 
	     String filePath = ""; 

	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	     kw30000u1110vo.setMbrId((String)session.getAttribute("mbrId"));  
		    	 kw30000u1110vo.setRoleNm((String) jsonObj.get("roleNm"));
		    	 kw30000u1110vo.setDeptNm((String) jsonObj.get("deptNm"));
		    	 kw30000u1110vo.setAsgnDd((String) jsonObj.get("asgnDd"));
		    	 kw30000u1110vo.setEndDd((String) jsonObj.get("endDd"));
		    	 kw30000u1110vo.setFnlEduDd((String) jsonObj.get("fnlEduDd"));
		    	 kw30000u1110vo.setEduVlidStrDd((String) jsonObj.get("eduVlidStrDd"));
		    	 kw30000u1110vo.setEmpeNo((String) jsonObj.get("empeNo"));
		    	 kw30000u1110vo.setNm((String) jsonObj.get("nm"));

		    	 //1. seq가 있으면 insert
		    	 if ((!jsonObj.has("seq"))) {  // insert이면
					System.out.println("insert로 들어왔다.");
					
					MultipartFile mr = mtfRequest.getFile("file");
			    	System.out.println("mr ::: " +mr);
			    	String originFileName = mr.getOriginalFilename(); // 원본 파일 명
			    	String reFileNm = path + System.currentTimeMillis() + originFileName;
		            
			    	if(!mr.isEmpty()) {  //파일이 들어왔다면
		            	 try {					            	
		            		 mr.transferTo(new File(reFileNm));
					              System.out.println("insert 파일 :: " + mr);
								  kw30000u1110vo.setBoardFile(reFileNm);
								  kw30000u1110vo.setBoardFileName(originFileName);
				            } catch (IllegalStateException e) {
				                e.printStackTrace();
				            } catch (IOException e) {
				                e.printStackTrace();
				            }
		            } 
				    int insertNum = kw30000u1110Service.KW30000U1110insertSave(kw30000u1110vo);
			// 2. seq있는건 update
				} else {
					System.out.println("update로 들어왔다.");
					kw30000u1110vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
					int seq = Integer.parseInt(jsonObj.get("seq").toString());
					MultipartFile mr = mtfRequest.getFile("file" + seq);
			    	System.out.println("mr ::: " +mr);
		            String originFileName = mr.getOriginalFilename(); // 원본 파일 명
		            String reFileNm = path + System.currentTimeMillis() + originFileName; 
					   //이전의 데이터에 이수증이 포함이 되어있지 않다면 
			            if(!mr.isEmpty()) {
			            	 try {					            	
			            		 mr.transferTo(new File(reFileNm));
			            		 kw30000u1110vo.setBoardFile(reFileNm);
								 kw30000u1110vo.setBoardFileName(originFileName);
					            } catch (IllegalStateException e) {
					                e.printStackTrace();
					            } catch (IOException e) {
					                e.printStackTrace();
					            }
			            } 
					   int updateNum = kw30000u1110Service.KW30000U1110updateSave(kw30000u1110vo);
			}
	     }			
	  }
	  
	  /* 이수증 - 리스트 출력*/
		@RequestMapping("/KW30000U1110Certi_pop.do")
		public String KW30000U1110Certi_pop() throws Exception {
			return "page/KW30000/KW30000U1110Certi_pop";
		}
		
		/* Ajax 이수증 pop 조회 */
		@ResponseBody
		@RequestMapping(value = "/KW30000U1110Certi_popList", produces = "application/json")
		public ResponseEntity<HashMap<String, Object>> KW30000U1110Certi_popList(SearchHndlr search, HttpSession session) throws Exception {
			
			/*---세션 사용자 입력---*/ 
			LoginVO authUser = (LoginVO)session.getAttribute("authUser");
			String popBzRgstNo = (String)session.getAttribute("popBzRgstNo");
			/*----------------*/
			
			Paging paging = new Paging();//페이징 객체 추가
			//사업자번호 조회 
			if(popBzRgstNo == null) {
				search.setSearchBzRgstNo(authUser.getBzRgstNo());
				int listCnt = kw30000u1110Service.KW30000U1110selectCnt(search);
				paging.setCri(search);
			    paging.setTotalCount(listCnt); 
			} else {
				search.setSearchBzRgstNo(popBzRgstNo);
				int listCnt = kw30000u1110Service.KW30000U1110selectCnt(search);
				paging.setCri(search);
			    paging.setTotalCount(listCnt); 
			}
			
			HashMap<String, Object> result = new HashMap<>();
			result.put("pagination", paging);		
			result.put("resultList", kw30000u1110Service.KW30000U1110CertiPopSelect(search));
					
			return ResponseEntity.ok(result);
		}
		
	  /* 히스토리내역 - 리스트 출력*/
		@RequestMapping("/KW30000U1110Pop.do")
		public String KW30000U1110Pop() throws Exception {
			return "page/KW30000/KW30000U1110pop";
		}
		
		/* Ajax pop 조회 */
		@ResponseBody
		@RequestMapping(value = "/KW30000U1110popList", produces = "application/json")
		public ResponseEntity<HashMap<String, Object>> KW30000U1110popList(SearchHndlr search, HttpSession session) throws Exception {
			
			/*---세션 사용자 입력---*/ 
			LoginVO authUser = (LoginVO)session.getAttribute("authUser");
			String popBzRgstNo = (String)session.getAttribute("popBzRgstNo");
			/*----------------*/
			
			Paging paging = new Paging();//페이징 객체 추가
			//사업자번호 조회 
			if(popBzRgstNo == null) {
				search.setSearchBzRgstNo(authUser.getBzRgstNo());
				int listCnt = kw30000u1110Service.KW30000U1110selectCnt(search);
				paging.setCri(search);
			    paging.setTotalCount(listCnt); 
			} else {
				search.setSearchBzRgstNo(popBzRgstNo);
				int listCnt = kw30000u1110Service.KW30000U1110selectCnt(search);
				paging.setCri(search);
			    paging.setTotalCount(listCnt); 
			}
			
			HashMap<String, Object> result = new HashMap<>();
			result.put("pagination", paging);		
			result.put("resultList", kw30000u1110Service.KW30000U1110popSelect(search));
					
			return ResponseEntity.ok(result);
		}
}
