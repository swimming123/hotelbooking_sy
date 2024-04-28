package kr.co.ictedu.admin.controller.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.ictedu.admin.dao.SyBoardInter;
import kr.co.ictedu.admin.dao.TodayHtDaoInter;
import kr.co.ictedu.mvc.dto.SyBoardDTO;
import kr.co.ictedu.mvc.dto.TodayHtDTO;

@Controller
public class MenuController {
	@Autowired
	private TodayHtDaoInter todayHtDaoInter;
	@Autowired
	private SyBoardInter syBoardInter;
	
	@GetMapping("/django_upfrom")
	public String django_upfrom() {
		return "/board/django/upform";
	}
	
	@GetMapping("/saPhone")
	public String saPhone() {
		return "board/resMap/sphForm";
	}
	
	@GetMapping(value= {"/", "/board"})
	public String main(Model m) {
		List<SyBoardDTO> syBoardList = syBoardInter.listSyBoard();
		m.addAttribute("pageType", "admboard");
		m.addAttribute("syBoardList", syBoardList);
		return "board/board";
	}
	@GetMapping(value= {"/main"})
	public String adminDefaultPage(Model model) {
		List<TodayHtDTO> thtlist = todayHtDaoInter.listTodayHt();
	    model.addAttribute("thtlist", thtlist);
	    for (TodayHtDTO e : thtlist) {
	        System.out.println("tHtNum: " + e.gettHtNum());
	        System.out.println("thtName: " + e.gettHtName());
	        System.out.println("thtGrade: " + e.gettHtGrade());
	        System.out.println("thtPrice: " + e.gettHtPrice());
	    }
	    model.addAttribute("pageType", "todayHtList");
		return "admin/index";
	}
}
