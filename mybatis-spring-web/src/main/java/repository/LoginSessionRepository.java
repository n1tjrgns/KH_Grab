package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class LoginSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.LoginMapper";
	
	public List<Member> selectLogin() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = nameSpace+".selectMemberByLoginCheck";
		return sqlSession.selectList(statement);
	}
}
