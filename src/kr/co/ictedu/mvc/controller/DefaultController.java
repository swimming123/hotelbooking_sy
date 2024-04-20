package kr.co.ictedu.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.ictedu.mvc.dao.TodayHtDaoInter;
import kr.co.ictedu.mvc.dto.TodayHtDTO;

@SessionAttributes("pageType")
@Controller
public class DefaultController {
	@Autowired
	private TodayHtDaoInter todayHtDaoInter;
	
	@GetMapping(value = { "/main", "" })
	public String main(Model m) {
		List<TodayHtDTO> thtlist = todayHtDaoInter.listTodayHt();
		m.addAttribute("thtlist", thtlist);
		m.addAttribute("pageType", "todayHtList");
		m.addAttribute("pageType", "main");
		String rootPath = System.getProperty("user.dir");
		String basePath = System.getProperty("basedir");
		System.out.println("rootPath : "+rootPath);
		System.out.println("basePath : "+basePath);
		return "hotel/main";
	}

	
	@GetMapping("/reservation")
    public String reservation(Model m) {
        // reservation 임시 페이지 로직
    	m.addAttribute("pageType", "reservation");
        return "reservation/reservation";
    }
	
	@GetMapping(value = { "/test"})
	public String test() {
		return"main/index";
	}

}
