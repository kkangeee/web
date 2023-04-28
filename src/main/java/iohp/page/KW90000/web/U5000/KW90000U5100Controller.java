package iohp.page.KW90000.web.U5000;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.Paging;
import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW90000.service.KW90000U5100Service;
import iohp.page.KW90000.service.KW90000U3100VO;

@RequestMapping("/page/KW90000")
@Controller
	public class KW90000U5100Controller {
	@Resource(name = "KW90000U5100Service")
	private KW90000U5100Service KW90000U5100Service;
	
		@RequestMapping("/KW90000U5100.do")
		public String KW90000U5100pageList(Model model, @ModelAttribute("kw90000u3100vo") KW90000U3100VO kw90000u3100vo) throws Exception {
			model.addAttribute("act", "KW90000");
			model.addAttribute("resultList", KW90000U5100Service.KW90000U5100select(kw90000u3100vo));
			model.addAttribute("resultList1", KW90000U5100Service.KW90000U5100select(kw90000u3100vo));
			model.addAttribute("resultList2", KW90000U5100Service.KW90000U5100select(kw90000u3100vo));
			return "page/KW90000/KW90000U5100";
		}
	
	

  
}

