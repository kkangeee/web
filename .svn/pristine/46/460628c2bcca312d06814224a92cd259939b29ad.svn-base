package iohp.page.KW40000.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/page/KW40000")
@Controller
public class KW40000U1100Controller {
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW40000U1100.do")
	public String notice_list(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		System.out.println("==================in");
		
		model.addAttribute("act", "KW40000U0000");
		model.addAttribute("act2", "KW40000U1000");
		
		return "page/KW40000/KW40000U1100";
	}

}
