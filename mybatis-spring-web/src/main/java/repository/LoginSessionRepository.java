package repository;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.*;


@Repository
public class LoginSessionRepository extends AbstractRepository {
	
	private final String nameSpace="repository.mapper.LoginMapper";
	
	public Member selectLoginMember(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = nameSpace+".selectMemberByLoginCheck";		
		return sqlSession.selectOne(statement, member);
	}
	
	public Integer updateMember(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statement = nameSpace+".updateMember";		
		int result = sqlSession.update(statement,member);
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
