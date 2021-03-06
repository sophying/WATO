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
    public List<QnaReplyVO> readReply(int QNA_BNO) throws Exception {
        return dao.readReply(QNA_BNO);
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
    public void replyDelete(int QNA_RNO) throws Exception {
        dao.replyDelete(QNA_RNO);
    }

    @Override
    public String readReply1(QnaReplyVO replyVO) throws Exception {
         return dao.readReply1(replyVO);
    }
    @Override
    public List<Object> check() throws Exception {
    	return dao.check();
    }

}
