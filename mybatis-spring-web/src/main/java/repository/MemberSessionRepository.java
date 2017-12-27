package repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class MemberSessionRepository extends AbstractRepository {
   private final String nameSpace = "repository.mapper.LoginMapper";

   public Integer deleteMember(Member member) {
      SqlSession sqlSession = this.getSqlSessionFactory().openSession();
      try {
      String statement = nameSpace+".deleteMemberByCondition";
       int result = sqlSession.delete(statement,member);
       System.out.println(result);
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