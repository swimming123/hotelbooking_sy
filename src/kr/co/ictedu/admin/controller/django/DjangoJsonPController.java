package kr.co.ictedu.admin.controller.django;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DjangoJsonPController {

	@RequestMapping("/jsonpTest")
	public String djangoJson() {
		System.out.println("Test ~~");
		return "/board/django/jsonp";
	}
	
	
	//django 로 파일을 비동기식으로 전송하기 위한 폼에 대한 mapping 처리
	@RequestMapping("/django_upfrom")
	public String djangoFile() {
		System.out.println("Test ~~");
		return "/board/django/upform";
	}
	
	
}




