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
	
	
	//django �� ������ �񵿱������ �����ϱ� ���� ���� ���� mapping ó��
	@RequestMapping("/django_upfrom")
	public String djangoFile() {
		System.out.println("Test ~~");
		return "/board/django/upform";
	}
	
	
}




