package com.king.myapp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.domain.TeacherReplyVO;

@Repository
public class TeacherEnrollDAOImpl implements TeacherEnrollDAO {

	@Inject
	SqlSession sql;
	
	
	@Override
	public void addClass(TeacherEnrollVO teacherVO) throws Exception{
		sql.insert("study.t_enroll",teacherVO);
	}


	// 2. listAll
	@Override
	public List<TeacherEnrollVO> listAll() {
		return sql.selectList("study.t_class_list");
	}
	
	// viewCnt 조회수 
	@Override
	public void viewCnt(int t_no) throws Exception {
		sql.update("study.viewCnt", t_no);
	}

	// 3. detail List 상세보기 
	@Override
	public TeacherEnrollVO detailRead(int t_no) throws Exception {
		return sql.selectOne("study.t_class_detail",t_no);
	}

	// 수정글 등록 
	@Override
	public void update(TeacherEnrollVO teacherVO) throws Exception {
		sql.update("study.t_modify",teacherVO);
	}

	// 댓글 목록
	@Override
	public List<TeacherReplyVO> replyRead(int t_no) throws Exception {
		return sql.selectList("study.t_replyRead", t_no);
	}

	// 댓글 등록
	@Override
	public void replyInsert(TeacherReplyVO replyVO) throws Exception {
		sql.insert("study.t_replyInsert", replyVO);
	}

	// 삭제
	@Override
	public void classDelete(int t_no) throws Exception {
		sql.delete("study.t_delete", t_no);
	}
	//댓글 수정
	@Override
	public void replyUpdate(TeacherReplyVO replyVO) throws Exception {
		sql.update("study.r_update",replyVO);
	}
	//댓글 삭제
	@Override
	public void DeleteReply(int r_no) throws Exception {
		sql.delete("study.r_delete",r_no);
	}


	@Override
	public List<TeacherParticipationVO> aprroveByTeach(int t_no) throws Exception {
		return sql.selectList("study.t_aprroveByTeach",t_no);
	}



}
