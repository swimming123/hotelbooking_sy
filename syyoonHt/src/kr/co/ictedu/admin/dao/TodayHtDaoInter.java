package kr.co.ictedu.admin.dao;


import java.util.List;

import kr.co.ictedu.mvc.dto.TodayHtDTO;

public interface TodayHtDaoInter {
	void addTodayHt(TodayHtDTO vo); // �Է� 
	 List<TodayHtDTO> listTodayHt(); // ����Ʈ
	 TodayHtDTO detailTodayHt(int tHtNum);//�󼼺��� �� ����
	 void deleteTodayHt(int tHtnum);//����
	 void updateTodayHt(TodayHtDTO vo);//����
}
