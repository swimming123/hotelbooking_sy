package kr.co.ictedu.mvc.dao;

import java.util.List;

import kr.co.ictedu.mvc.dto.ResvVO;

public interface ResvDaoInter {
	public void resvInsert(ResvVO vo); //�Է�
	public List<ResvVO> list(); //����Ʈ
	public void resvupdate(ResvVO vo); //����
	public void deleteResv(int num); //����
	public ResvVO listDetail(int num);

}