package com.king.myapp.service;


import com.king.myapp.domain.QnaReplyVO;

import java.util.List;

public interface QnaReplyService {

    //댓글 조회
    public List<QnaReplyVO> readReply(int QNA_BNO) throws Exception;
    //댓글 작성
    public void replyWrite(QnaReplyVO vo) throws Exception;

    public void replyUpdate(QnaReplyVO vo) throws Exception;

    public void replyDelete(int QNA_RNO) throws Exception;
}
