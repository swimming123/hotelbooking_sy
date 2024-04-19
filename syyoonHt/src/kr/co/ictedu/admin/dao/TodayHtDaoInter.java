package kr.co.ictedu.admin.dao;


import java.util.List;

import kr.co.ictedu.mvc.dto.TodayHtDTO;

public interface TodayHtDaoInter {
	void addTodayHt(TodayHtDTO vo); // 입력 
	 List<TodayHtDTO> listTodayHt(); // 리스트
	 TodayHtDTO detailTodayHt(int tHtNum);//상세보기 및 수정
	 void deleteTodayHt(int tHtnum);//삭제
	 void updateTodayHt(TodayHtDTO vo);//수정
}
