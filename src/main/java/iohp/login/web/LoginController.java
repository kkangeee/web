package iohp.login.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import iohp.login.service.LoginService;
import iohp.login.service.LoginVO;

/**
 * 
 * 메인 컨트롤러
 * 
 * @author 손우정
 * @since 2022.08.24
 * @version 1.0
 * @see
 *
 *      <pre>
* << 개정이력(Modification Information) >>
*
*   수정일                  수정자			수정내용
*  --------------------------------------
*   2022.08.24		손우정			최초 생성
 *
 *      </pre>
 */

@RequestMapping("/login")
@Controller
public class LoginController {

	/**
	 * 로그인페이지
	 * 
	 * @return
	 * @throws Exception
	 */

	@Autowired
	private LoginService loginService;
	
	/*로그인 폼 이동*/
	@RequestMapping("/login.do")
	public String loginForm(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		return "login/login";
	}
	
	/*로그인*/
	@RequestMapping("/login")
	public String login(LoginVO loginVO, Model model, HttpSession session) throws Exception {

		LoginVO userVO = loginService.login(loginVO);
		if (userVO != null) {
			session.setAttribute("authUser", userVO);
			session.setAttribute("bzRgstNo", userVO.getBzRgstNo()); /* 사업자등록번호 */
			session.setAttribute("mbrId", userVO.getMbrId());       /* 회원ID */
			session.setAttribute("mbrNm", userVO.getMbrNm());       /* 회원이름 */		
			session.setAttribute("bzCoNm", userVO.getBzCoNm());     /* 사업자명 */
			session.setAttribute("fonNo", userVO.getFonNo());       /* 연락처 */
			session.setAttribute("gndrTp", userVO.getGndrTp());     /* 남여구분 */
			session.setAttribute("mbrTp", userVO.getMbrTp());      /* 회원구분 */
			session.setAttribute("roleAuthId", userVO.getRoleAuthId()); /* 역할권한ID */
			session.setAttribute("mbrAprvYn", userVO.getMbrAprvYn());  /* 회원승인여부 */
			session.setAttribute("mbrSeq", userVO.getMbrSeq());  /* 회원순번 */	
			//session.setAttribute("roleName", "사업장관리");  /* 회원순번 */
			List<Map<String, Object>> roleList = loginService.selectRoleMenu(loginVO);
			session.setAttribute("roleList", roleList);
			model.addAttribute("popOpen", 1);
			return "main/main";
		} else {
				model.addAttribute("statusValue", false);
			return "login/login";
		}
	}
	
	/*로그인 아웃*/
	@RequestMapping("/logout.do")
	public String loginOut(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/login/login.do";
	}

	@RequestMapping("/findId.do")
	public String find_id(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "login/find_id";
	}

	@RequestMapping("/findPw.do")
	public String find_pw(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("==================in");
		return "login/find_pw";
	}

}