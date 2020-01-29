package com.king.myapp.persistence;

import com.king.myapp.domain.QnaBoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository
public class QnaBoardDAOImpl implements QnaBoardDAO {
	
	//마이바티스
	@Autowired
	private SqlSession sql;
	//매퍼
	//private static String namespace = "com.king.myweb.mappers.boardMapper";
	/*@Override
	public List<BoardVO> listRank() throws Exception {
		return sql.selectList("board.listRank");
	}
	@Override
	public List<BoardVO> searchResultStudy(String searchKey) {
		return sql.selectList("board.searchResultStudy",searchKey);
	}
	@Override
	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception {
		return sql.selectList("board.searchResultTeacher",searchKey);
	}
	@Override
	public List<BoardVO> searchResultQna(String searchKey) throws Exception {
		return sql.selectList("board.searchResultQna",searchKey);
	}*/
	@Override
	public List<QnaBoardVO> getQnaList() throws Exception {
		return sql.selectList("qna.getQnaList");
	}
	@Override
	public QnaBoardVO getQnaRead(int bno) throws Exception {
		return sql.selectOne("qna.getQnaRead", bno);
	}
	@Override
	public QnaBoardVO getQnaWrite(int bno) throws Exception {
		return sql.selectOne("qna.getQnaWrite", bno);
	}
	@Override
	public QnaBoardVO getQnaModify(int bno) throws Exception {
		return sql.selectOne("qna.getQnaModify", bno);
	}
	@Override
	public QnaBoardVO postQnaModify(QnaBoardVO vo) throws Exception {
		return sql.selectOne("qna.postQnaModify", vo);
	}

	@Override
	public void postQnaWrite(QnaBoardVO vo) throws Exception {
		sql.insert("qna.postQnaWrite", vo);
	}

	@Override
	public void QnaDelete(int bno) throws Exception {
		sql.delete("qna.QnaDelete", bno);
	}

	@Override
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		return sql.selectList("qna.selectFileList", bno);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return sql.selectOne("qna.selectFileInfo",map);
	}


}
