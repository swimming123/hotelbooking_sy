package kr.co.ictedu.mvc.dao;

import java.util.List;

import kr.co.ictedu.mvc.dto.ResvVO;

public interface ResvDaoInter {
	void resvInsert(ResvVO vo); //�Է�
	public List<ResvVO> list(); //����Ʈ
	public ResvVO listDetail(int num);
		

	
}