package kr.co.ictedu.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ictedu.mvc.dto.HtMemberDTO;
@Repository
public class HtMember implements HtMemberDaoInter{
	@Autowired // -> °øÅëºó mybatis
	private SqlSessionTemplate ss;

	@Override
	public void addMember(HtMemberDTO vo) {
		ss.insert("hmb.add",vo);
		
	}

	@Override
	public int idCheck(String id) {
		return ss.selectOne("hmb.idcheck", id);
	}

	@Override
	public HtMemberDTO loginCheck(HtMemberDTO v) {
		return ss.selectOne("hmb.loginchk",v);
	}

	@Override
	public HtMemberDTO myPage(String id) {
		return ss.selectOne("hmb.mypage", id);
	}

	@Override
	public List<HtMemberDTO> memList(Map<String, String> map) {

		return null;
	}

	@Override
	public int getCnt() {

		return 0;
	}

}
