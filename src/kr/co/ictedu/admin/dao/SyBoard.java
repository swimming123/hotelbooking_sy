package kr.co.ictedu.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ictedu.mvc.dto.BoardCommVO;
import kr.co.ictedu.mvc.dto.SyBoardCommDTO;
import kr.co.ictedu.mvc.dto.SyBoardDTO;
@Repository
public class SyBoard implements SyBoardInter{
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addSyBoard(SyBoardDTO vo) {
		ss.insert("sybvo.add", vo);
	}

	@Override
	public List<SyBoardDTO> listSyBoard() {
		return ss.selectList("sybvo.list");
	}

	@Override
	public SyBoardDTO detailSyBoard(int bNum) {
		return ss.selectOne("sybvo.detail", bNum);
	}

	@Override
	public void deleteSyBoard(int bNum) {
		ss.delete("sybvo.del", bNum);
	}

	@Override
	public void updateSyBoard(SyBoardDTO vo) {
		ss.update("sybvo.up", vo);
	}

	@Override
	public void updatebHit(int bnum) {
		ss.update("sybvo.hit", bnum);
	}

	@Override
	public void addBoardComm(BoardCommVO cvo) {
		ss.insert("sybvo.addComm", cvo);
	}

	@Override
	public List<SyBoardCommDTO> syListCommBoard(int num) {
		return ss.selectList("sybvo.listComm",num);
	}

}
