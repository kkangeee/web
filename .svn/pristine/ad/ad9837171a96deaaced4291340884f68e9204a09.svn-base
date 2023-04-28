package iohp.page.KW30000.web.U4000;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.core.tools.picocli.CommandLine.Help.TextTable.Cell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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
import iohp.page.KW30000.service.KW30000U4730Service;
import iohp.page.KW30000.service.KW30000U4730VO;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U4730Controller {
	@Resource(name = "KW30000U4730Service")
	private KW30000U4730Service kw30000u4730Service;
	
	@RequestMapping("/KW30000U4730.do")
	public String KW30000U4730pageList(@ModelAttribute("kw30000u4730vo") KW30000U4730VO kw30000u4730vo, Model model,
	HttpSession session, HttpServletRequest request) throws Exception {
		model.addAttribute("act", "KW30000U4730");
		return "page/KW30000/KW30000U4730";
	}
	
	/* Ajax 조회 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U4730selectList", produces = "application/json")
	public ResponseEntity<HashMap<String, Object>> KW30000U4730List(
			//페이징처리 
			@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			//검색키워드
			,@RequestParam(required = false, defaultValue = "keyword") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") SearchHndlr search, HttpSession session) throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		
		// 페이징
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
		Paging paging = new Paging();
		
		if(popBzRgstNo == null) {
			search.setSearchBzRgstNo(authUser.getBzRgstNo());
			int listCnt = kw30000u4730Service.KW30000U4730selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		} else {
			search.setSearchBzRgstNo(popBzRgstNo);
			int listCnt = kw30000u4730Service.KW30000U4730selectCnt(search);
			paging.setCri(search);
	        paging.setTotalCount(listCnt);
		}
		result.put("pagination", paging);

		// 게시글 화면 출력
		result.put("resultList", kw30000u4730Service.KW30000U4730select(search));
				
		return ResponseEntity.ok(result);
	}

	/* Ajax 삭제 */
	@ResponseBody
	@RequestMapping(value = "/KW30000U4730delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void KW30000U4730delete(@ModelAttribute("kw30000u4730vo") KW30000U4730VO kw30000u4730vo, HttpServletRequest request, HttpSession session) throws Exception {
		 String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
		 System.out.println("zzzzzzzzzzzzzzzzzzzzzz" + request.getParameter("data"));
		 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u4730vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u4730vo.setBzRgstNo(popBzRgstNo);
			}
		 
		 //배열에 담아준다.
		 JSONArray jsonArray = new JSONArray(jsonS);
	     
	     int cnt = 0;
		// 삭제
	    for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    //	 kw30000u4730vo.setTableNm("TB_KW50_SFTY_HLTH_ORG_CMPS");
	    	 kw30000u4730vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));   
	    	 cnt += kw30000u4730Service.KW30000U4730delete(kw30000u4730vo);
	    }
	}

	/* Ajax 추가 & 저장 */
	  @ResponseBody
	  @RequestMapping(value = "/KW30000U4730save.do", method = {RequestMethod.GET, RequestMethod.POST}) 
	  public void KW30000U4730save(@ModelAttribute("kw30000u4730vo") KW30000U4730VO kw30000u4730vo, Model model, HttpServletRequest request, HttpSession session, MultipartHttpServletRequest mtfRequest) throws Exception{
	 
		//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw30000u4730vo.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw30000u4730vo.setBzRgstNo(popBzRgstNo);
			}
			kw30000u4730vo.setMbrNm(authUser.getMbrNm());
	     String jsonS = request.getParameter("data").replaceAll("&quot;", "\'");
	     System.out.println("GGGGGGGGG" + jsonS);
	     System.out.println("GGGGGGGGG" + request.getParameter("data"));
	     JSONArray jsonArray = new JSONArray(jsonS);
	    
	     String path = "/upload/files/";
	     String fileName = ""; 
	     String filePath = ""; 
	     
	     for(int i = 0; i< jsonArray.length();i++) {
	    	 JSONObject jsonObj = (JSONObject)jsonArray.get(i);
	    	 // [{ aa : nn } 
	    	 	  kw30000u4730vo.setRgstDd((String)jsonObj.get("rgstDd"));
				  kw30000u4730vo.setRestrNm((String)jsonObj.get("restrNm"));
			if (!jsonObj.has("seq")) {  
				  MultipartFile mr = mtfRequest.getFile("file");
			    	System.out.println("mr ::: " +mr);
			    	String originFileName = mr.getOriginalFilename(); // 원본 파일 명
			    	String reFileNm = path + System.currentTimeMillis() + originFileName;
				  
			    	if(!mr.isEmpty()) {  //파일이 들어왔다면
		            	 try {					            	
		            		 mr.transferTo(new File(reFileNm));
					              System.out.println("insert 파일 :: " + mr);
					              kw30000u4730vo.setBoardFile(reFileNm);
					              kw30000u4730vo.setBoardFileName(originFileName);
				            } catch (IllegalStateException e) {
				                e.printStackTrace();
				            } catch (IOException e) {
				                e.printStackTrace();
				            }
		            }  
			 
				 int insertNum = kw30000u4730Service.KW30000U4730insertSave(kw30000u4730vo);
				
			 }else {
				 kw30000u4730vo.setSeq(Integer.parseInt(jsonObj.get("seq").toString()));
				 int seq = Integer.parseInt(jsonObj.get("seq").toString());
				 MultipartFile mr = mtfRequest.getFile("file" + seq);
			    	System.out.println("mr ::: " +mr);
		            String originFileName = mr.getOriginalFilename(); // 원본 파일 명
		            String reFileNm = path + System.currentTimeMillis() + originFileName; 
					   //이전의 데이터에 이수증이 포함이 되어있지 않다면 
			            if(!mr.isEmpty()) {
			            	 try {					            	
			            		 mr.transferTo(new File(reFileNm));
			            		 kw30000u4730vo.setBoardFile(reFileNm);
			            		 kw30000u4730vo.setBoardFileName(originFileName);
					            } catch (IllegalStateException e) {
					                e.printStackTrace();
					            } catch (IOException e) {
					                e.printStackTrace();
					            }
			            } 
				 int updateNum = kw30000u4730Service.KW30000U4730updateSave(kw30000u4730vo);
			 }
	     }
	  }

	  /* 결과 관리 팝업 호출 */
	  @RequestMapping("/KW30000U4730resultPop.do")
		public String KW30000U4730resultPop() throws Exception {
			return "page/KW30000/KW30000U4730resultPop";
		}
	  
	  /* 결과 관리 팝업 Ajax 조회 */
		@ResponseBody
		@RequestMapping(value = "/KW30000U4730PopList", produces = "application/json")
		public ResponseEntity<HashMap<String, Object>> KW30000U4730PopList(
				//페이징처리 
				@RequestParam(required = false, defaultValue = "1") int page
				,@RequestParam(required = false, defaultValue = "1") int range
				//검색키워드
				,@RequestParam(required = false, defaultValue = "keyword") String searchType
				,@RequestParam(required = false) String keyword
				,@ModelAttribute("search") SearchHndlr search, HttpSession session, Model model, @ModelAttribute("kw30000u4730vo") KW30000U4730VO kw30000u4730vo) throws Exception {
			
			HashMap<String, Object> result = new HashMap<>();
			
			// 페이징
			//세션값 가져오기
			LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			Paging paging = new Paging();
			
			if(popBzRgstNo == null) {
				search.setSearchBzRgstNo(authUser.getBzRgstNo());
				int listCnt = kw30000u4730Service.KW30000U4730selectCnt(search);
				paging.setCri(search);
		        paging.setTotalCount(listCnt);
			} else {
				search.setSearchBzRgstNo(popBzRgstNo);
				int listCnt = kw30000u4730Service.KW30000U4730selectCnt(search);
				paging.setCri(search);
		        paging.setTotalCount(listCnt);
			}
			
			result.put("pagination", paging);
	
			try {
				System.out.println("innnnnnnnnnnnnnnnnnnn");
				//엑셀 파일 주소를 담습니다. (xlsx경우)
				FileInputStream file = new FileInputStream("C:/upload/files/1670224607321테스트_파일.xlsx");
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				
				HashMap<Integer, String> excelMap = new HashMap<Integer, String>(); // 값을 담을 변수 설정
				List<HashMap<Integer, String>> excelList = new ArrayList<HashMap<Integer, String>>(); //값을 담은 맵을 리스트화
				 
				int rowindex = 0;
				int columnindex = 0;
				DecimalFormat df = new DecimalFormat();
				
				//시트를 읽습니다.
				XSSFSheet sheet = workbook.getSheetAt(0);
				
				//행의 수를 체크해줍니다.
				int rows = sheet.getPhysicalNumberOfRows();
				System.out.println("rows::::::::" +rows);
				for(rowindex = 0; rowindex < rows; rowindex++){
					
				  if(rowindex > 2) { 
					  excelList.add(excelMap); 
					  excelMap = new HashMap<Integer,String>(); 
					  }
				   
				    //행을 읽습니다.
				    XSSFRow row = sheet.getRow(rowindex);
				    if(row !=null){
				        //셀의 수를 체크해줍니다.
				        int cells = row.getPhysicalNumberOfCells();
				        for(columnindex=0; columnindex<=cells-1; columnindex++){
				            //셀값을 확인합니다.
				            XSSFCell cell=row.getCell(columnindex);
				            String value="";
				            if(cell==null){
				                excelMap.put(columnindex, value);
				                continue;
				            }else{
				            //타입별로 value에 값을 넣어줍니다.
				                switch (cell.getCellType()){
				                case XSSFCell.CELL_TYPE_FORMULA:
				                    value=cell.getCellFormula();
				                    break;
				                case XSSFCell.CELL_TYPE_NUMERIC:
				                    if( HSSFDateUtil.isCellDateFormatted(cell) ) {
				                        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				                        value = formatter.format(cell.getDateCellValue());
				                    }
				                    else {
				                        double ddata = Double.valueOf( cell.getNumericCellValue() ).intValue();
				                        value = df.format(ddata);
				                    }
				                    break;
				                case XSSFCell.CELL_TYPE_STRING:
				                    value=cell.getStringCellValue()+"";
				                    break;
				                case XSSFCell.CELL_TYPE_BLANK:
				                    value=cell.getBooleanCellValue()+"";
				                    break;
				                case XSSFCell.CELL_TYPE_ERROR:
				                    value=cell.getErrorCellValue()+"";
				                    break;
				                }
				            }
				            
				            //map에 데이터를 담습니다.
				            excelMap.put(columnindex, value);
				            System.out.println(rowindex+" 행 : "+columnindex+"번째의 값은: "+value);
							/*
							 * if(rowindex != 0) { kw30000u4730vo.setPrcsNm(value);
							 * kw30000u4730vo.setDtlWrkNm(value); kw30000u4730vo.setDngrClss(value);
							 * kw30000u4730vo.setDtlWrkNm(value); kw30000u4730vo.setDtlWrkNm(value);
							 * 
							 * 
							 * } if(rowindex != 0) { kw30000u4730vo.setPrcsNm(value);
							 * kw30000u4730vo.setDtlWrkNm(value); kw30000u4730vo.setDngrClss(value);
							 * kw30000u4730vo.setDtlWrkNm(value); kw30000u4730vo.setDtlWrkNm(value); }
							 */
				        }
				        
				    }
				    
				}
				
				 
				//데이터 추출
				model.addAttribute("excelList", excelList); 
				System.out.println("excelList :::::::::::" + excelList);
				    
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			// 게시글 화면 출력
//			result.put("resultList", kw30000u4730Service.KW30000U4730select(search));
			return ResponseEntity.ok(result);
		}
  
}

