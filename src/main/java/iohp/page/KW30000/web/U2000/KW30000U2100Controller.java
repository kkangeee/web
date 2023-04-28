package iohp.page.KW30000.web.U2000;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
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
import iohp.page.KW30000.service.KW30000U2100Service;
import iohp.page.KW30000.service.KW30000U2100VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U2100Controller {
	@Resource(name = "KW30000U2100Service")
	private KW30000U2100Service kw30000u2100Service;
	
	@RequestMapping("/KW30000U2100.do")
	public String KW30000U2100pageList(@ModelAttribute("kw30000u2100vo") KW30000U2100VO kw30000u2100vo, Model model,
									   HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000U2100");
		return "page/KW30000/KW30000U2100";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U2100selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U2100List( @ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		//세션값 가져오기
				LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
				String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
				Paging paging = new Paging();
				if(popBzRgstNo == null) {
					search.setSearchBzRgstNo(authUser.getBzRgstNo());
					int listCnt = kw30000u2100Service.KW30000U2100selectCnt(search);
			        paging.setCri(search);
			        paging.setTotalCount(listCnt);
				} else {
					search.setSearchBzRgstNo(popBzRgstNo);
					int listCnt = kw30000u2100Service.KW30000U2100selectCnt(search);
			        paging.setCri(search);
			        paging.setTotalCount(listCnt);
				}
		// 페이징
		result.put("pagination", paging);		
		// 게시글 화면 출력
		result.put("resultList", kw30000u2100Service.KW30000U2100select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U2100delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U2100delete(@ModelAttribute("kw30000u2100vo") KW30000U2100VO kw30000u2100vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u2100vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u2100vo.setBzRgstNo(popBzRgstNo);
			}
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);

	    	 kw30000u2100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u2100Service.KW30000U2100delete(kw30000u2100vo);
	    }
	}

	
	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U2100save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U2100save(@ModelAttribute("kw30000u2100vo") KW30000U2100VO kw30000u2100vo, Model model, HttpServletRequest request, HttpSession session, MultipartHttpServletRequest mtfRequest) throws Exception{
	  
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo = (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			kw30000u2100vo.setMbrId(authUser.getMbrId());
			
			kw30000u2100vo.setBzRgstNo(authUser.getBzRgstNo());
			if(popBzRgstNo == null) {
				kw30000u2100vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u2100vo.setBzRgstNo(popBzRgstNo);
			}
		  
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	     
	     String path = "/upload/files/";
	     String fileName = ""; 
	     String filePath = ""; 
	     
	     
	     
	     
	     
			/*
			 * List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile"); String path
			 * = "/home/atos/tiohupload/files/"; String fileName = ""; String filePath = "";
			 * 
			 * for (MultipartFile mf : fileList) { if(!mf.isEmpty()) { String originFileName
			 * = mf.getOriginalFilename(); // 원본 파일 명 String safeFile = path +
			 * System.currentTimeMillis() + originFileName; try { mf.transferTo(new
			 * File(safeFile)); if(!safeFile.isEmpty()) customerVO.setBoardFile(filePath +=
			 * (filePath == "" ? "" : "||") + safeFile ); if(!safeFile.isEmpty())
			 * customerVO.setBoardFileName(fileName += (fileName == "" ? "" : "||") +
			 * originFileName); } catch (IllegalStateException e) { e.printStackTrace(); }
			 * catch (IOException e) { e.printStackTrace(); } } }
			 */
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     //System.out.println(jsonArray.get(0).toString());
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 

	    	 kw30000u2100vo.setExamYear((String)jsonObj.get("examYear"));   
	    	 kw30000u2100vo.setExamStrDd((String)jsonObj.get("examStrDd"));   
	    	 kw30000u2100vo.setExamEndDd((String)jsonObj.get("examEndDd"));   
	    	 kw30000u2100vo.setRsltTbNm((String)jsonObj.get("rsltTbNm"));   
			 if (!jsonObj.has("seq")) {
				 MultipartFile mr = mtfRequest.getFile("file");
			    	System.out.println("mr ::: " +mr);
			    	String originFileName = mr.getOriginalFilename(); // 원본 파일 명
			    	String reFileNm = path + System.currentTimeMillis() + originFileName;
		            
			    	if(!mr.isEmpty()) {  //파일이 들어왔다면
		            	 try {					            	
		            		 mr.transferTo(new File(reFileNm));
					              System.out.println("insert 파일 :: " + mr);
					              kw30000u2100vo.setBoardFile(reFileNm);
					              kw30000u2100vo.setBoardFileName(originFileName);
				            } catch (IllegalStateException e) {
				                e.printStackTrace();
				            } catch (IOException e) {
				                e.printStackTrace();
				            }
		            } 
				 
				 int insertNum = kw30000u2100Service.KW30000U2100insertSave(kw30000u2100vo);
				
			 }else {
				 kw30000u2100vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int seq = Integer.parseInt(jsonObj.get("seq").toString());
				 MultipartFile mr = mtfRequest.getFile("file" + seq);
			    	System.out.println("mr ::: " +mr);
		            String originFileName = mr.getOriginalFilename(); // 원본 파일 명
		            String reFileNm = path + System.currentTimeMillis() + originFileName; 
					   //이전의 데이터에 이수증이 포함이 되어있지 않다면 
			            if(!mr.isEmpty()) {
			            	 try {					            	
			            		 mr.transferTo(new File(reFileNm));
			            		 kw30000u2100vo.setBoardFile(reFileNm);
			            		 kw30000u2100vo.setBoardFileName(originFileName);
					            } catch (IllegalStateException e) {
					                e.printStackTrace();
					            } catch (IOException e) {
					                e.printStackTrace();
					            }
			            } 
				 int updateNum = kw30000u2100Service.KW30000U2100updateSave(kw30000u2100vo);
			 }
	     }
	     
	  
	  }
	

  
}

