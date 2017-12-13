package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.member;

public class LoginSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.CommentMapper";
	
	public member selectLogin() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace+".selectMemberByLoginCheck";
		return sqlSession.selectOne(statment);
	}
}
