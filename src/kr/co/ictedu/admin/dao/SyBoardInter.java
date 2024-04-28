package kr.co.ictedu.admin.dao;

import java.util.List;

import kr.co.ictedu.mvc.dto.BoardCommVO;
import kr.co.ictedu.mvc.dto.SyBoardCommDTO;
import kr.co.ictedu.mvc.dto.SyBoardDTO;

public interface SyBoardInter {
	void addSyBoard(SyBoardDTO vo); // 입력 
	 List<SyBoardDTO> listSyBoard(); // 리스트
	 SyBoardDTO detailSyBoard(int bNum);//상세보기 및 수정
	 void deleteSyBoard(int bNum);//삭제
	 void updateSyBoard(SyBoardDTO vo);//수정
	 void updatebHit(int bnum);// 조회수
	//댓글 
	public void addBoardComm(BoardCommVO cvo);
	public List<SyBoardCommDTO> syListCommBoard(int num);
}
