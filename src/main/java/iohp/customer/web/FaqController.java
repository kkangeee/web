package iohp.customer.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import iohp.customer.service.CustomerVO;
import iohp.customer.service.FaqService;
import iohp.login.service.LoginVO;


/**
 * 
 * 커스터머 컨트롤러
 * 
 * @author 송재원
 * @since 2022.08.24
 * @version 1.0
 * @see
 *
 *      <pre>
* << 개정이력(Modification Information) >>
*
*   수정일                  수정자			수정내용
*  --------------------------------------
*   2022.08.24		송재원			최초 생성
 *
 *      </pre>
 */
@RequestMapping("/customer/faq")
@Controller
public class FaqController {

	@Resource(name = "FaqService")
	private FaqService faqService;
	/**
	 * 자주하는 질문
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/faq.do")
	public String faqList(@ModelAttribute("customerVO") CustomerVO customerVO, HttpServletRequest req, Model model) throws Exception {

		// noticeVO.setBoardCd("02");

		// 공지사항 리스트
		List<CustomerVO> resultList1 = faqService.selectFaqList(customerVO);
		model.addAttribute("act", "KW70000U0000");
		model.addAttribute("act2", "KW70000U2000");
		model.addAttribute("resultList1", resultList1);

		return "customer/faq";
	}

	// 글쓰기 - 폼
	@RequestMapping("/faq_write.do")
	public String faqInsertForm(@ModelAttribute("customerVO") CustomerVO customerVO, HttpServletRequest req, Model model)
			throws Exception {

		return "customer/faq_write";
	}

	// 글쓰기 - 확인
	@RequestMapping("/write")
	public String faqInsert(@ModelAttribute("customerVO") CustomerVO customerVO, HttpServletRequest req, Model model, HttpSession session)
			throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		customerVO.setMbrNm(authUser.getMbrNm());
		/*----------------*/

		faqService.faqInsert(customerVO);

		return "redirect:/customer/faq/faq.do";
	}
	
	// 글 - 수정 폼
	@RequestMapping("/updateForm/{contentId}")
	public String faqUpdateForm(@PathVariable("contentId") int contentId, Model model, HttpServletRequest req)
			throws Exception {

		CustomerVO customerVO = faqService.faqUpdateForm(contentId);

		model.addAttribute("resultView1", customerVO);

		return "customer/faq_update";
	}

	// 글 - 수정 확인
	@RequestMapping("/update")
	public String noticeUpdate(@ModelAttribute("customerVO") CustomerVO customerVO, Model model, HttpServletRequest req, HttpSession session)
			throws Exception {
		
		/*---세션 사용자 입력---*/
		LoginVO authUser = (LoginVO)session.getAttribute("authUser");		
		customerVO.setMbrNm(authUser.getMbrNm());
		/*----------------*/

		faqService.faqUpdate(customerVO);

		return "redirect:/customer/faq/faq.do";
	}

	// 글 - 삭제
	@RequestMapping("/delete/{contentId}")
	public String faqDelete(@PathVariable("contentId") int contentId, CustomerVO customerVO, Model model,
			HttpServletRequest req) throws Exception {

		faqService.faqDelete(contentId);

		return "redirect:/customer/faq/faq.do";
	}

}
