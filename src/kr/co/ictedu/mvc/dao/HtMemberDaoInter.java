package kr.co.ictedu.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.ictedu.mvc.dto.HtMemberDTO;

public interface HtMemberDaoInter {
	public void addMember(HtMemberDTO vo); //ȸ������
	public int idCheck(String id); //���̵� üũ
	public HtMemberDTO loginCheck(HtMemberDTO v); //�α��� üũ
	public HtMemberDTO myPage (String id); //����������
	public List<HtMemberDTO> memList(Map<String, String> map); //ȸ������Ʈ
	public int getCnt(); //�α� ó��
}
