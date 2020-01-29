package com.king.myapp.service;

import com.king.myapp.domain.QnaReplyVO;
import com.king.myapp.persistence.QnaReplyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class QnaReplyServiceimpl implements QnaReplyService {

    @Autowired
    private QnaReplyDAO dao;

    //댓글 조회
    @Override
    public List<QnaReplyVO> readReply(int bno) throws Exception {
        return dao.readReply(bno);
    }
    //댓글 작성
    @Override
    public void replyWrite(QnaReplyVO vo) throws Exception {
        dao.replyWrite(vo);
    }

    @Override
    public void replyUpdate(QnaReplyVO vo) throws Exception {
        dao.replyUpdate(vo);
    }

    @Override
    public void replyDelete(int rno) throws Exception {
        dao.replyDelete(rno);
    }
}
