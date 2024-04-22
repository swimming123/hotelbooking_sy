package kr.co.ictedu.mvc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.ictedu.mvc.dao.ResvDaoInter;
import kr.co.ictedu.mvc.dto.ResvVO;
@SessionAttributes("pageType")
@Controller
public class ResvController {
	
	@Autowired
	private ResvDaoInter resvdaointer;
	// 폼으로 이동하는 메서드
	@GetMapping("/todayHtRerv")
	public String infoinsert(Model m) {
		m.addAttribute("pageType", "reservation");
		return "reservation/reservation";
	}

	// 폼에서 데이터를 입력하고 infoDetail로 이동하는 메서드  (개인정보)(정보를 입력하는 것들은 ResvVO를 사용함)
	@PostMapping("/resvInsert")
	public String resvinsert(ResvVO vo, Model m) {
		resvdaointer.resvInsert(vo);
		m.addAttribute("vo",vo);
		m.addAttribute("pageType", "reservation");
		return "redirect:resvList";
	}

	// 예약정보 리스트 
	@GetMapping("/resvList")
	public String resvlist(Model m) {
		List<ResvVO> list = resvdaointer.list();
		m.addAttribute("list",list);
		 for (ResvVO e : list) {
		        System.out.println("getNum: " + e.getNum());
		        System.out.println("getFname: " + e.getFname());
		        System.out.println("getLname: " + e.getLname());
		    }
		 m.addAttribute("pageType", "reservation");
		return "reservation/list";
	}

	// infoDetail에서 resvDetail로  이동하는 메서드 (예약정보)(아직 안씀)
	@GetMapping("/resvDetail")
	public String resvdetail(Model m,int num) {
		ResvVO vo = resvdaointer.listDetail(num);
		m.addAttribute("num",num);
		m.addAttribute("vo",vo);
		m.addAttribute("pageType", "reservation");
		return "reservation/detail";
	}

	// 업데이트 페이지에서 디테일 페이지로 넘어가는 메서드 
	@GetMapping("/resvUpdate")
	public String resvUpdate(@RequestParam("num")int num, Model m) {
		ResvVO vo = resvdaointer.listDetail(num);
        System.out.println("getNum: " + vo.getNum());
        System.out.println("getFname: " + vo.getFname());
        System.out.println("getLname: " + vo.getLname());
		m.addAttribute("vo",vo);
		return"reservation/update";
	}
	// 예약정보 업데이트 (정보를 입력하는 것들은 ResvVO를 사용함)
	@PostMapping("resvUp")
	public String resvUp(ResvVO vo) {
		resvdaointer.resvupdate(vo);
		System.out.println("num => "+ vo.getNum());
		return "redirect:resvList";
	}
	// 예약 삭제 
	@GetMapping("/resvDelete")
	public String resvdel(int num) {
		resvdaointer.deleteResv(num);
		return "redirect:resvList";
	}


}
