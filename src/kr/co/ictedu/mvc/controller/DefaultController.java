package kr.co.ictedu.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("pageType")
@Controller
public class DefaultController {
	@GetMapping(value = { "/main", "" })
	public String main(Model model) {
		model.addAttribute("pageType", "main");
		return "hotel/main";
	}

	
	@GetMapping("/reservation")
    public String reservation(Model model) {
        // reservation 임시 페이지 로직
    	model.addAttribute("pageType", "reservation");
        return "main/reservation";
    }
}
