package kr.co.ictedu.mvc.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ictedu.mvc.dao.TodayHtDaoInter;
import kr.co.ictedu.mvc.dto.TodayHtDTO;
// ������ Ÿ�� �� �ֱ�! css �и� ����� : m.addAttribute("pageType", "todayHtList");
@Controller
public class TodayHtController {
	@Autowired
	private TodayHtDaoInter todayHtDaoInter;

	@GetMapping("/todayHtList")
	public String todayHtList(Model m) {
		List<TodayHtDTO> thtlist = todayHtDaoInter.listTodayHt();
		m.addAttribute("thtlist", thtlist);
		m.addAttribute("pageType", "todayHtList");
		return "hotel/thtlist"; // ������ ����Ʈ ��������
	}
	
	@GetMapping("/todayHtDetail")
	public String todayHtDetail(@RequestParam("tHtNum") int tHtNum, Model m) {
		TodayHtDTO tht = todayHtDaoInter.detailTodayHt(tHtNum);
		m.addAttribute("thtlist", tht);
		m.addAttribute("pageType", "todayHtList");
		return "hotel/thtDetail";
	}

}