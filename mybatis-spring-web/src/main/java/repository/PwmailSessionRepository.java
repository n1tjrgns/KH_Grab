package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class PwmailSessionRepository extends AbstractRepository{

	private final String nameSpace = "repository.mapper.PwmailMapper";
	
	public Integer updateEmail(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace+".updateEmail";
			System.out.println("statment : " + statment);
			System.out.println("getmEmail : " + member.getmEmail());
			System.out.println("getmName : " + member.getmName());
			 int result = sqlSession.update(statment,member);
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
