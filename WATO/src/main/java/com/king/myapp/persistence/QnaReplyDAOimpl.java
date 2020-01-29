package com.king.myapp.persistence;

import com.king.myapp.domain.QnaReplyVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QnaReplyDAOimpl implements QnaReplyDAO {

    @Autowired
    private SqlSession sql;
    //댓글 조회
    @Override
    public List<QnaReplyVO> readReply(int bno) throws Exception {
        return sql.selectList("qnareply.readReply", bno);
    }
    //댓글 작성
    @Override
    public void replyWrite(QnaReplyVO vo) throws Exception {
        sql.insert("qnareply.replyWrite", vo);
    }

    @Override
    public void replyUpdate(QnaReplyVO vo) throws Exception {
        sql.update("qnareply.replyUpdate", vo);
    }

    @Override
    public void replyDelete(int rno) throws Exception {
        sql.delete("qnareply.replyDelete", rno);
    }
}
