package kr.co.ictedu.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


@SessionAttributes("pageType")
@Controller
public class DefaultController {
	@GetMapping(value = { "/main", "" })
	public String main() {
		return "main/intro";
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
