package iohp.page.KW30000.web.U2000;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/page/KW30000")
@Controller
public class KW30000U2530Controller {
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW30000U2530.do")
	public String notice_list(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		System.out.println("==================in");
		model.addAttribute("act", "KW30000");
		return "page/KW30000/KW30000U2530";
	}

}
