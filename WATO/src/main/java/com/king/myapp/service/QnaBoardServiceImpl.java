package com.king.myapp.service;

import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.persistence.QnaBoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class QnaBoardServiceImpl implements QnaBoardService {

	@Autowired
	private QnaBoardDAO dao;
	
/*	@Override
	public List<BoardVO> listRank() throws Exception {
		return dao.listRank();   
	}
	@Override
	public List<BoardVO> searchResultStudy(String searchKey) throws Exception {
		return dao.searchResultStudy(searchKey);
	}
	@Override
	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception {
		return dao.searchResultTeacher(searchKey);
	}
	@Override
	public List<BoardVO> searchResultQna(String searchKey) throws Exception {
		return dao.searchResultQna(searchKey);
	}*/
	@Override
	public List<QnaBoardVO> getQnaList() throws Exception {
		return dao.getQnaList();
	}
	@Override
	public QnaBoardVO getQnaRead(int bno) throws Exception {
		return dao.getQnaRead(bno);
	}

	@Override
	public QnaBoardVO getQnaModify(int bno) throws Exception {
		return dao.getQnaModify(bno);
	}

	@Override
	public QnaBoardVO postQnaModify(QnaBoardVO vo) throws Exception {
		return dao.postQnaModify(vo);
	}



	@Override
	public void postQnaWrite(QnaBoardVO vo) throws Exception {
		dao.postQnaWrite(vo);



	}

	@Override
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		return dao.selectFileList(bno);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return dao.selectFileInfo(map);
	}

	@Override
	public void QnaDelete(int bno) throws Exception {
		dao.QnaDelete(bno);
	}
	


}
