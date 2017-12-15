package repository;



import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class LoginSessionRepository extends AbstractRepository {
	
	private final String nameSpace="repository.mapper.LoginMapper";
	
	public Member selectLoginMember(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = nameSpace+".selectMemberByLoginCheck";		
		return sqlSession.selectOne(statement, member);
	}

}
