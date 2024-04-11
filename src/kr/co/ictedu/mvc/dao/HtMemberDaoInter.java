package kr.co.ictedu.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.ictedu.mvc.dto.HtMemberDTO;

public interface HtMemberDaoInter {
	public void addMember(HtMemberDTO vo); //회원가입
	public int idCheck(String id); //아이디 체크
	public HtMemberDTO loginCheck(HtMemberDTO v); //로그인 체크
	public HtMemberDTO myPage (String id); //마이페이지
	public List<HtMemberDTO> memList(Map<String, String> map); //회원리스트
	public int getCnt(); //로깅 처리
}
