package iohp.mypage.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import iohp.login.service.LoginService;
import iohp.login.service.LoginVO;

@RequestMapping("/mypage")
@Controller
public class MY80000U2100Controller {

	@Resource(name = "LoginService")
	private LoginService loginService;

	/* 로그인 폼 이동 */
	@RequestMapping("/MY80000U2100.do")
	public String loginForm(Model model, HttpSession session, LoginVO loginVo) throws Exception {
		LoginVO authUser = (LoginVO) session.getAttribute("authUser");
		String mbrId = authUser.getMbrId();
		String bzRgstNo = authUser.getBzRgstNo();
		
		model.addAttribute("act", "KW80000U0000");
		model.addAttribute("act2", "KW80000U2000");
		model.addAttribute("mbrId", mbrId);
		model.addAttribute("bzRgstNo", bzRgstNo);

		return "login/mypageModifyLogin";
	}

	@RequestMapping("/MY80000U2100")
	public String mypageModifyLogin(@ModelAttribute LoginVO loginVO, Model model) throws Exception {
		LoginVO result = loginService.mypageLogin(loginVO);
		if (result != null) {
			model.addAttribute("act", "KW80000U0000");
			model.addAttribute("act2", "KW80000U2000");
			model.addAttribute("resultList", result);
			return "mypage/MY80000U2100";
		} else {
			model.addAttribute("act", "KW80000U0000");
			model.addAttribute("act2", "KW80000U2000");
			return "redirect:/mypage/MY80000U2100.do";
		}
	}

	
	  @RequestMapping("/MY80000U2100Update") 
	  public String mypageModify(@ModelAttribute LoginVO loginVO) throws Exception {
	  
		  int updateNum = loginService.updateMypage(loginVO); 
	  
		  return "redirect:/main/main.do";
	  }

}
