package kr.co.ictedu.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import kr.co.ictedu.admin.dao.TodayHtDaoInter;
import kr.co.ictedu.mvc.dto.TodayHtDTO;

@SessionAttributes("pageType")
@Controller
public class AdminController {
	
	@Autowired
	private TodayHtDaoInter todayHtDaoInter;
	
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
	
	@GetMapping("/todayHtprv")
	public String todayHtprv(Model m) {
		List<TodayHtDTO> thtlist = todayHtDaoInter.listTodayHt();
		m.addAttribute("thtlist", thtlist);
		return "";
	}
	
	@GetMapping("/todayHtDetail")
	public String todayHtDetail(@RequestParam("tHtNum") int tHtNum, Model m) {
		TodayHtDTO tht = todayHtDaoInter.detailTodayHt(tHtNum);
		m.addAttribute("thtlist", tht);
		return "hotel/admThtUpdate";
	}
	
	@GetMapping("/todayHtWrite")
	public String todayHtForm(Model m) {
		return "hotel/admThtWrite";
	}
	
	@GetMapping("/todayHtDelete")
	public String todayHtDelete(@RequestParam(name = "tHtNum") int tHtNum) {
		todayHtDaoInter.deleteTodayHt(tHtNum);
		return "redirect:main";
	}
	
	
	@PostMapping("/todayHtInsert")
	public String todayHtInsert(Model m, TodayHtDTO vo, HttpServletRequest request) {
		MultipartFile mf = vo.getMfile();
		String oriFn = mf.getOriginalFilename();
		if (oriFn.length() > 0) {
			String img_path = "resources\\imgfile";
			String r_path = request.getSession().getServletContext().getRealPath("/");
			//System.out.println("r_path:" + r_path);
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			//System.out.println("FullPath" + path);
			File f = new File(path.toString());
			if (!f.exists()) {
				f.mkdirs();
			}
			try {
				mf.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			vo.settHtImg(oriFn);
			long size = mf.getSize();
			String contentType = mf.getContentType();
			//System.out.println("파일 크기:" + size);
			//System.out.println("파일의 type:" + contentType);
		}
		todayHtDaoInter.addTodayHt(vo);
		return "redirect:main";
	}
	
	@GetMapping("/todayHtUpdate")
	public String todayHtUpdate(@RequestParam("tHtNum") int tHtNum, Model m) {
		TodayHtDTO tht = todayHtDaoInter.detailTodayHt(tHtNum);
		m.addAttribute("thtlist", tht);
		return "hotel/thtUpdate";
	}
	
	@PostMapping("/todayHtUp")
	public String todayHtUp(Model m, TodayHtDTO vo, HttpServletRequest request) {
		MultipartFile mf = vo.getMfile();
		String oriFn = mf.getOriginalFilename();
		if (oriFn.length() > 0) {
			String img_path = "resources\\imgfile";
			String r_path = request.getSession().getServletContext().getRealPath("/");
			//System.out.println("r_path:" + r_path);
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			//System.out.println("FullPath" + path);
			File f = new File(path.toString());
			if (!f.exists()) {
				f.mkdirs();
			}
			try {
				mf.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			vo.settHtImg(oriFn);
			long size = mf.getSize();
			String contentType = mf.getContentType();
			//System.out.println("파일 크기:" + size);
			//System.out.println("파일의 type:" + contentType);
		}
		todayHtDaoInter.updateTodayHt(vo);
		return "redirect:main";
	}
	
}
