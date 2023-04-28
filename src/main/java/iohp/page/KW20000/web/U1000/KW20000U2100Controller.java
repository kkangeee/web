package iohp.page.KW20000.web.U1000;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/page/KW20000")
@Controller
public class KW20000U2100Controller {
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW20000U2100.do")
	public String notice_list(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		System.out.println("==================in");
		
		model.addAttribute("act", "KW20000U0000");
		model.addAttribute("act2", "KW20000U2000");
	
		return "page/KW20000/KW20000U2100";
	}

}
