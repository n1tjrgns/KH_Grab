package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class LoginSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.LoginMapper";
	
	public Member selectLogin(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = nameSpace+".selectMemberByLoginCheck";
		Member dbMember =  new Member();
		dbMember =sqlSession.selectOne(statement);
		if( dbMember.getmPw().equals(member.getmPw())){
			return dbMember;
		}else {
			return null;
		}		
		
	}
}
