package iohp.footer.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import iohp.join.service.JoinService;
import iohp.join.service.JoinVO;

@RequestMapping("/footer")
@Controller
public class footerController {
	
	@RequestMapping("/privacyNotice.do")
	public String privacyNotice() throws Exception {
		System.out.println("==================in");
		return "footer/privacyNotice";
	}
	
	@RequestMapping("/termsConditions.do")
	public String termsConditions() throws Exception {
		System.out.println("==================in");
		return "footer/termsConditions";
	}
	
	@RequestMapping("/copyrightProtectionPolicy.do")
	public String copyrightProtectionPolicy() throws Exception {
		System.out.println("==================in");
		return "footer/copyrightProtectionPolicy";
	}

}
