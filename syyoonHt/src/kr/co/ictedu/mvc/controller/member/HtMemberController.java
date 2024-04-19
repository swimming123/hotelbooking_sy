package kr.co.ictedu.mvc.controller.member;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ictedu.mvc.dao.HtMemberDaoInter;
import kr.co.ictedu.mvc.dto.HtMemberDTO;

@Controller
//@RequestMapping("/member")
public class HtMemberController {
	@Autowired
	private HtMemberDaoInter htMemberDaoInter;
	@GetMapping("/loginForm")
	public String memberForm(Model m) {
		m.addAttribute("pageType", "loginForm");
		return "member/loginForm";
	}
	
	@GetMapping("/idcheck")
	@ResponseBody
	public String idCheck(@RequestParam(required = true) String id) {
		int res = htMemberDaoInter.idCheck(id);
		System.out.println("res=>"+res);
		return String.valueOf(res);
	}
	
	@PostMapping("/memberIn")
	public String memberIn(Model m, HtMemberDTO vo, HttpServletRequest request) {
		vo.setReip(request.getRemoteAddr());
		htMemberDaoInter.addMember(vo);
		m.addAttribute("name", vo.getName());
		m.addAttribute("id", vo.getId());
		m.addAttribute("mdate", vo.getMdate());
		System.out.println("name : "+vo.getName()+", id : "+vo.getId()+", mdate : "+vo.getMdate());
		m.addAttribute("pageType", "loginForm");
		return "member/mysuccess";
	}
}