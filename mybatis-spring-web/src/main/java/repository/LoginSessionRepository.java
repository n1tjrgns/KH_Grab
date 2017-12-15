package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.member;

@Repository
public class LoginSessionRepository extends AbstractRepository {
	
	private final String nameSpace="repository.mapper.LoginMapper";
	public member selectLoginMember(member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = nameSpace+".selectMemberByLoginCheck";		
		return sqlSession.selectOne(statement, member);
	}

}
