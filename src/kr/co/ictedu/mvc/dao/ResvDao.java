package kr.co.ictedu.mvc.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ictedu.mvc.dto.ResvVO;
@Repository
public class ResvDao implements ResvDaoInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void resvInsert(ResvVO vo) {
		ss.insert("rb.in",vo);
	}

	@Override
	public List<ResvVO> list() {
		return ss.selectList("rb.list");
	}

	@Override
	public ResvVO listDetail(int num) {
		return ss.selectOne("rb.detail",num);
	}


}
