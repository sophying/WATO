package com.king.myapp.service;

import com.king.myapp.domain.Criteria;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.QnafileUtils;
import com.king.myapp.domain.SearchCriteria;
import com.king.myapp.persistence.QnaBoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;


@Service
public class QnaBoardServiceImpl implements QnaBoardService {

	@Autowired
	private QnaBoardDAO dao;
	
	@Resource(name="QnafileUtils")
	private QnafileUtils fileUtils;
	
	

	@Override
	public List<QnaBoardVO> getQnaList(SearchCriteria scri) throws Exception {
		return dao.getQnaList(scri);
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
	public void postQnaWrite(QnaBoardVO vo, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.postQnaWrite(vo,mpRequest);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(vo, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.insertFile(list.get(i)); 
		}


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
	public int listCount() throws Exception {
		return dao.listCount();
	}

	@Override
	public void QnaDelete(int bno) throws Exception {
		dao.QnaDelete(bno);
	}
	


}
