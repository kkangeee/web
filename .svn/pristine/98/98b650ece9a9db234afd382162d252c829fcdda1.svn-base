package iohp.page.KW60000.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/page/KW60000")
@Controller
public class KW60000U1100Controller {
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/KW60000U1100.do")
	public String notice_list(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		
		model.addAttribute("act", "KW60000U0000");
		model.addAttribute("act2", "KW60000U1000");
		
		return "page/KW60000/KW60000U1100";
	}

}
