package iohp.main.web;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
* 
* 메인 컨트롤러
* 
* @author 손우정
* @since 2022.08.22
* @version 1.0
* @see
*
*      <pre>
* << 개정이력(Modification Information) >>
*
*   수정일                  수정자			수정내용
*  --------------------------------------
*   2022.08.22		손우정			최초 생성
*
*      </pre>
*/
@Controller
@RequestMapping("/main")
public class MainController {

	/**
	 * 메인페이지
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/main.do")
	public String main(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		return "main/main";
	}
	
	@RequestMapping("/mainpop.do")
	public String KW30000U5200pop(Model model, HttpSession session, HttpServletRequest request)throws Exception {
		return "main/main_pop";
	}
	
	@ResponseBody
	@RequestMapping(value="mainPopList", produces ="application/json")
	public ResponseEntity<HashMap<String, Object>> popList() throws Exception {
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("popList", "팝업리스트 출력");
		return ResponseEntity.ok(result);
	}
	
}
