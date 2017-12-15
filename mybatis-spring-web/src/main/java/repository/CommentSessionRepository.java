package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Comment;

@Repository
public class CommentSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.CommentMapper";

	public List<Comment> selectComment(Comment comment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace+".selectCommentByCondition";
									
		return sqlSession.selectList(statment,comment);
	}
	

	public Integer insertComment(Comment comment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".insertCommentByCondition";
		 int result = sqlSession.insert(statment,comment);
		 if(result>0) {
			 sqlSession.commit();
		 }else {
			 sqlSession.rollback();
		 }
		 return result;
		}finally {
			sqlSession.close();
		}
	}
	
	public Integer updateComment(Comment comment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".updateCommentByCondition";
		 int result = sqlSession.update(statment,comment);
		if(result>0) {
			 sqlSession.commit();
		 }else {
			 sqlSession.rollback();
		 }
		 return result;
		}finally {
			sqlSession.close();
		}
	}
	
	public Integer deleteComment(Comment comment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".deleteCommentByCondition";
		 int result = sqlSession.delete(statment,comment);
		if(result>0) {
			 sqlSession.commit();
		 }else {
			 sqlSession.rollback();
		 }
		 return result;
		}finally {
			sqlSession.close();
		}
	}
	
	
}
