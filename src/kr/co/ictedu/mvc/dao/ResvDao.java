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
		ss.insert("rb.insert2",vo);
		
	}
	@Override
	public List<ResvVO> list() {
		return ss.selectList("rb.list");
	}

	@Override
	public ResvVO listDetail(int num) {
		return ss.selectOne("rb.detail2",num);
	}

	@Override
	public void resvupdate(ResvVO vo) {
		ss.update("rb.ub2",vo);
	}

	@Override
	public void deleteResv(int num) {
		ss.delete("rb.delete",num);
		
	}
	
	


	
}
