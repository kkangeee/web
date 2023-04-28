package iohp.page.KW10000.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW10000.service.KW10000U1100Service;
import iohp.page.KW10000.service.KW10000U1100VO;

@RequestMapping("/page/KW10000")
@Controller
public class KW10000U1100Controller {
	
	@Resource(name = "KW10000U1100Service")
	private KW10000U1100Service kw10000u1100Service;
	
	/**
	 * 기본 정보 관리
	 * @return
	 * @throws Exception 
	 */
	
	@RequestMapping("/KW10000U1100.do")
	public String selectList(@ModelAttribute("kw10000u1100VO") KW10000U1100VO kw10000u1100VO, Model model, HttpSession session) throws Exception{
		//세션값 가져오기
		LoginVO authUser = (LoginVO)session.getAttribute("authUser"); //로그인 정보
		
		if(authUser != null) {
			String popBzRgstNo= (String)session.getAttribute("popBzRgstNo"); //검색사업자번호 
			
			if(popBzRgstNo == null) {
				kw10000u1100VO.setBzRgstNo(authUser.getBzRgstNo());
			} else {
				kw10000u1100VO.setBzRgstNo(popBzRgstNo);
			}
			
			model.addAttribute("act", "KW10000U0000");
			model.addAttribute("act2", "KW10000U1000");
			model.addAttribute("resultList1", kw10000u1100Service.selectList(kw10000u1100VO));
		
			return "page/KW10000/KW10000U1100";
		} else {
			return "redirect:/login/login.do";
		}
	}
	
}
