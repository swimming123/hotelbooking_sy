package kr.co.ictedu.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import kr.co.ictedu.admin.dao.SyBoardInter;
import kr.co.ictedu.mvc.dto.BoardCommVO;
import kr.co.ictedu.mvc.dto.SyBoardCommDTO;
import kr.co.ictedu.mvc.dto.SyBoardDTO;


@SessionAttributes("pageType")
@Controller
public class BoardController {
	
	@Autowired
	private SyBoardInter syBoardInter;
	

	
	//댓글 입력 처리 
	//form의 action, method를 확인해서 작성 *
	@PostMapping("/bcominsert")
	public ResponseEntity<?> bcominsert(BoardCommVO cvo) {
	    syBoardInter.addBoardComm(cvo);
	    // 추가된 댓글 정보를 응답으로 보냄
	    return ResponseEntity.ok(cvo);
	}

	@GetMapping("/syBoardDetail")
	public String syBoardDetail(Model m, 
			@RequestParam(name="bNum") int bNum, 
			@RequestParam(defaultValue = "detail") String type) {
		if(!type.equals("comm")) {
			syBoardInter.updatebHit(bNum);
		}
		SyBoardDTO vo = syBoardInter.detailSyBoard(bNum);
		m.addAttribute("syBoardDetail", vo);
		// 댓글 값을 뷰로 전달하기 
		List<SyBoardCommDTO> listcomm = syBoardInter.syListCommBoard(bNum);
	    m.addAttribute("listcomm", listcomm);
		return "board/boardDetail";
	}
	
	@GetMapping("/syBoardDelete")
	public String syBoardDelete(@RequestParam(name="bNum") int bNum, Model m) {
		syBoardInter.deleteSyBoard(bNum);
		return "redirect:board";
	}
	

	
	@GetMapping("/syBoardForm")
	public String bWrite(Model m) {
		m.addAttribute("pageType", "admboard");
		return "board/boardUpload";
	}
	
	@PostMapping("/syBoardInsert")
	public String bWriteInsert(Model m, SyBoardDTO vo, HttpServletRequest request) {
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
			//FullPathD:\syyoon\workspaced\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\syyoonHt\resources\imgfile\mung.jpeg
			File f = new File(path.toString());
			if (!f.exists()) {
				f.mkdirs();
			}
			try {
				mf.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			vo.setbImgx(oriFn);
			long size = mf.getSize();
			String contentType = mf.getContentType();
			//System.out.println("파일 크기:" + size);
			//System.out.println("파일의 type:" + contentType);
		}
		syBoardInter.addSyBoard(vo);
		return "redirect:board";
	}
	@PostMapping("/syBoardUpdate")
	public String bWriteUpdate(@RequestParam("bNum") int bNum, Model m) {
		SyBoardDTO vo = syBoardInter.detailSyBoard(bNum);
		m.addAttribute("syBoardDetail", vo);
		return "board/boardUpdate";
	}
	@PostMapping("/syBoardUp")
	public String syBoardUp(Model m, SyBoardDTO vo, HttpServletRequest request) {
		MultipartFile mf = vo.getMfile();
	    if (mf != null && !mf.isEmpty()) { // 이미지가 전송되었는지 확인
	        String oriFn = mf.getOriginalFilename();
	        String img_path = "resources\\imgfile";
	        String r_path = request.getSession().getServletContext().getRealPath("/");
	        StringBuffer path = new StringBuffer();
	        path.append(r_path).append(img_path).append("\\");
	        path.append(oriFn);
	        File f = new File(path.toString());
	        if (!f.exists()) {
	            f.mkdirs();
	        }
	        try {
	            mf.transferTo(f);
	            vo.setbImgx(oriFn);
	            long size = mf.getSize();
	            String contentType = mf.getContentType();
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    } else { // 이미지가 전송되지 않았을 경우
	        // 이미지가 전송되지 않았으므로 기존의 이미지 정보를 유지합니다.
	    	SyBoardDTO original = syBoardInter.detailSyBoard(vo.getbNum());
	        vo.setbImgx(original.getbImgx());
	    }
	    syBoardInter.updateSyBoard(vo);
	    return "redirect:main";
	}
}
