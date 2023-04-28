package iohp.join.web;

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

@RequestMapping("/join")
@Controller
public class JoinController {

	/**
	 * 회원가입 페이지
	 * 
	 * @return
	 * @throws Exception
	 */
	@Resource(name = "JoinService")
	private JoinService joinService;

	
	@RequestMapping("/join01.do")
	public String join01(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join01";
	}

	@RequestMapping("/join02.do")
	public String join02(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join02";
	}

	@RequestMapping("/join02_company.do")
	public String join02_company(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join02_company";
	}

	@RequestMapping("/join03.do")
	public String join03(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join03";
	}

	@RequestMapping("/join04_company.do")
	public String join04_company(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join04_company";
	}

	@RequestMapping("/join04_personal.do")
	public String join04_personal(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join04_personal";
	}

	@RequestMapping("/join05.do")
	public String join05(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "join/join05";
	}

	/* 일반회원 가입  */
	@RequestMapping("/personal")
	public String joinPersonalInsert(@ModelAttribute("joinVO") JoinVO joinVO, HttpServletRequest req, Model model)
			throws Exception {
		System.out.println(":::::" + joinVO);
		//joinService.joinPersonalInsert(joinVO);
		
		return "join/join05";
	}
	
	/* 기업회원 가입  */
	@RequestMapping("/company")
	public String joinCompanyInsert(@ModelAttribute("joinVO") JoinVO joinVO, HttpServletRequest req, Model model)
			throws Exception {

		System.out.println(":::::" + joinVO);
		
		//joinService.joinCompanyInsert(joinVO);
		
		return "join/join05";
	}
	
	//아이디중복 체크
	@ResponseBody
	@RequestMapping("/idCheck")
	public boolean idCheck(@RequestParam ("id") String userId) throws Exception {
		return joinService.idCheck(userId);
	}

}
