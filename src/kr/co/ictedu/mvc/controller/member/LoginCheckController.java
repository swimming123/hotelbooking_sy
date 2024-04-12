package kr.co.ictedu.mvc.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.ictedu.mvc.dao.HtMemberDaoInter;
import kr.co.ictedu.mvc.dto.HtMemberDTO;

@Controller
public class LoginCheckController {
	@Autowired
	private HtMemberDaoInter htMemberDaoInter;
	@PostMapping("/loginProcess")
	public ModelAndView loginfProcess(HttpSession session, HttpServletRequest request, HtMemberDTO vo,
			@RequestHeader("User-Agent") String userAgent) {
		ModelAndView mav = new ModelAndView("redirect:/web/");
		System.out.println("id:" + vo.getId());
		System.out.println("pwd:" + vo.getPwd());
		System.out.println("userAgent:" + userAgent);
		HtMemberDTO dto = htMemberDaoInter.loginCheck(vo);
		if (dto == null) {
			mav.setViewName("error/paramException");
			mav.addObject("emsg", "�α��� ���� �Դϴ�.");
		} else { // �α��� ����ó��
			session.setAttribute("sessionName", dto.getName());
			session.setAttribute("sessionID", dto.getId());
			System.out.println("�α��� ����! �� ���� ���� => Proceeding Call");
		}
		return mav;
	}
	@GetMapping("/logout")
	public ModelAndView loginfoutProcess(HttpSession session, HttpServletRequest requeset) {
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionID");
		mav.setViewName("redirect:/web/");
		System.out.println("�α׾ƿ� ����! �� ���� ���� => Proceeding Call");
		return mav;
	}
	
}
