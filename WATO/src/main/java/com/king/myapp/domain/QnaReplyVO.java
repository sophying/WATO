package com.king.myapp.domain;

import java.util.Date;

public class QnaReplyVO {

    private int QNA_BNO;
    private int QNA_RNO;
    private String QNA_CONTENT;
    private String QNA_WRITER;
    private Date QNA_REGDATE;

    public int getQNA_BNO() {
        return QNA_BNO;
    }

    public void setQNA_BNO(int QNA_BNO) {
        this.QNA_BNO = QNA_BNO;
    }

    public int getQNA_RNO() {
        return QNA_RNO;
    }

    public void setQNA_RNO(int QNA_RNO) {
        this.QNA_RNO = QNA_RNO;
    }

    public String getQNA_CONTENT() {
        return QNA_CONTENT;
    }

    public void setQNA_CONTENT(String QNA_CONTENT) {
        this.QNA_CONTENT = QNA_CONTENT;
    }

    public Date getQNA_REGDATE() {
        return QNA_REGDATE;
    }

    public void setQNA_REGDATE(Date QNA_REGDATE) {
        this.QNA_REGDATE = QNA_REGDATE;
    }

    public String getQNA_WRITER() {
        return QNA_WRITER;
    }

    public void setQNA_WRITER(String QNA_WRITER) {
        this.QNA_WRITER = QNA_WRITER;
    }
}
