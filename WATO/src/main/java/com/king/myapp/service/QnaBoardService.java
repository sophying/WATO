package com.king.myapp.service;

import com.king.myapp.domain.QnaBoardVO;

import java.util.List;
import java.util.Map;



public interface QnaBoardService {

/*	public List<BoardVO> listRank() throws Exception;

	public List<BoardVO> searchResultStudy(String searchKey) throws Exception;

	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception;

	public List<BoardVO> searchResultQna(String searchKey) throws Exception;*/


	public List<QnaBoardVO> getQnaList() throws Exception;

	public QnaBoardVO getQnaRead(int bno) throws Exception;

	public QnaBoardVO getQnaModify(int bno) throws Exception;

	public QnaBoardVO postQnaModify(QnaBoardVO vo) throws Exception;

	public void QnaDelete(int bno) throws Exception;

	public void postQnaWrite(QnaBoardVO vo) throws Exception;


	public List<Map<String, Object>> selectFileList(int bno) throws Exception;

	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
}
