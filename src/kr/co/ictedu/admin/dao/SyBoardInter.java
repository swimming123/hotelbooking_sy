package kr.co.ictedu.admin.dao;

import java.util.List;

import kr.co.ictedu.mvc.dto.BoardCommVO;
import kr.co.ictedu.mvc.dto.SyBoardCommDTO;
import kr.co.ictedu.mvc.dto.SyBoardDTO;

public interface SyBoardInter {
	void addSyBoard(SyBoardDTO vo); // �Է� 
	 List<SyBoardDTO> listSyBoard(); // ����Ʈ
	 SyBoardDTO detailSyBoard(int bNum);//�󼼺��� �� ����
	 void deleteSyBoard(int bNum);//����
	 void updateSyBoard(SyBoardDTO vo);//����
	 void updatebHit(int bnum);// ��ȸ��
	//��� 
	public void addBoardComm(BoardCommVO cvo);
	public List<SyBoardCommDTO> syListCommBoard(int num);
}
