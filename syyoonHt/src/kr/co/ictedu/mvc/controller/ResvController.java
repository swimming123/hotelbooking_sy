package kr.co.ictedu.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ictedu.mvc.dao.ResvDaoInter;
import kr.co.ictedu.mvc.dto.ResvVO;

@Controller
public class ResvController {
	
	@Autowired
	private ResvDaoInter resvdaointer;
	
	@GetMapping("/write")
	public String infoinsert() {
		return "reservation/Resv";
	}
	
	@PostMapping("/insert")
	public String infoinsert(Model m, ResvVO vo, HttpServletRequest request) {
		resvdaointer.resvInsert(vo);
		System.out.println(vo.getDates());
		return "reservation/infoDetail";
	}

	@PostMapping("/detail")
	public String infodetail(@RequestParam("num") int num, Model m) {
		ResvVO rvo = resvdaointer.listDetail(num);
		m.addAttribute("rvo", rvo);
		System.out.println(rvo.getDates());
		return "reservation/resvDetail";
	}
	
	
	
	@GetMapping("/List")
	public String infoList(Model m) {
		List<ResvVO> list = resvdaointer.list();
		m.addAttribute("list",list);
		return "redirect:todayHtList";
	}
	

}
