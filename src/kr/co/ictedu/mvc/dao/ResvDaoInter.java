package kr.co.ictedu.mvc.dao;

import java.util.List;

import kr.co.ictedu.mvc.dto.ResvVO;

public interface ResvDaoInter {
	void resvInsert(ResvVO vo); //입력
	public List<ResvVO> list(); //리스트
	public ResvVO listDetail(int num);
		

	
}