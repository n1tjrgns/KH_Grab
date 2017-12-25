package repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class MemberSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.LoginMapper";

//	public List<Member> selectComment(Member member) {
//		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
//		String statment = nameSpace+".selectRegisterByCondition";
//									
//		return sqlSession.selectList(statment,member);
//	}
//	

	public Integer insertMember(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".insertRegisterByCondition";
		Integer result = sqlSession.insert(statment,member);
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
	
	public Integer insertMemberEnter(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".insertRegisterEnterByCondition";
		Integer result = sqlSession.insert(statment,member);
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
	
	public int updateMemberUpdate(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".updateByCondition";
		Integer result = sqlSession.update(statment,member);
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
	
//	public Integer updateComment(Member comment) {
//		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
//		try {
//		String statment = nameSpace+".updateCommentByCondition";
//		 int result = sqlSession.update(statment,comment);
//		if(result>0) {
//			 sqlSession.commit();
//		 }else {
//			 sqlSession.rollback();
//		 }
//		 return result;
//		}finally {
//			sqlSession.close();
//		}
//	}
//	
//	public Integer deleteComment(Member member) {
//		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
//		try {
//		String statment = nameSpace+".deleteCommentByCondition";
//		 int result = sqlSession.delete(statment,member);
//		if(result>0) {
//			 sqlSession.commit();
//		 }else {
//			 sqlSession.rollback();
//		 }
//		 return result;
//		}finally {
//			sqlSession.close();
//		}
//	}
	
	
}
