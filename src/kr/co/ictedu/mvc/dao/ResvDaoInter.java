package kr.co.ictedu.mvc.dao;

import java.util.List;

import kr.co.ictedu.mvc.dto.ResvVO;

public interface ResvDaoInter {
	public void resvInsert(ResvVO vo); //입력
	public List<ResvVO> list(); //리스트
	public void resvupdate(ResvVO vo); //수정
	public void deleteResv(int num); //삭제
	public ResvVO listDetail(int num);

}