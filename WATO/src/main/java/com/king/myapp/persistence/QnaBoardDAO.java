package com.king.myapp.persistence;

import com.king.myapp.domain.Criteria;
import com.king.myapp.domain.QnaBoardVO;

import java.util.List;
import java.util.Map;

import com.king.myapp.domain.SearchCriteria;
import org.springframework.web.multipart.MultipartHttpServletRequest;


public interface QnaBoardDAO {
	

/*	public List<BoardVO> listRank() throws Exception;

	public List<BoardVO> searchResultStudy(String searchKey) throws Exception;

	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception;

	public List<BoardVO> searchResultQna(String searchKey) throws Exception;*/


	public List<QnaBoardVO> getQnaList(SearchCriteria scri) throws Exception;

	public QnaBoardVO getQnaRead(int bno) throws Exception;

	public QnaBoardVO getQnaWrite(int bno) throws Exception;

	public QnaBoardVO getQnaModify(int bno) throws Exception;

	public QnaBoardVO postQnaModify(QnaBoardVO vo) throws Exception;

	public void postQnaWrite(QnaBoardVO vo, MultipartHttpServletRequest mpRequest) throws Exception;

	public void QnaDelete(int bno) throws Exception;

	public List<Map<String, Object>> selectFileList(int bno) throws Exception;

	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;

	public void insertFile(Map<String, Object> map) throws Exception;

	public int listCount() throws Exception;

    public int board_this_month_Count() throws Exception;
}
