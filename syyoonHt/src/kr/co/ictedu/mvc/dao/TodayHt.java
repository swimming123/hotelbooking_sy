package kr.co.ictedu.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ictedu.mvc.dto.TodayHtDTO;

@Repository
public class TodayHt implements TodayHtDaoInter {
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addTodayHt(TodayHtDTO vo) {
		ss.insert("thtvo.add", vo);
	}

	@Override
	public List<TodayHtDTO> listTodayHt() {
		return ss.selectList("thtvo.list");
	}

	@Override
	public TodayHtDTO detailTodayHt(int tHtNum) {
		return ss.selectOne("thtvo.detail", tHtNum);
	}

	@Override
	public void deleteTodayHt(int tHtnum) {
		ss.delete("thtvo.del", tHtnum);
	}

	@Override
	public void updateTodayHt(TodayHtDTO vo) {
		ss.update("thtvo.up", vo);

	}
}
