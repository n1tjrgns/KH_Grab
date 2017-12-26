package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.CustomService;

@Repository
public class CsSessionRepository extends AbstractRepository{
   
   private final String nameSpace = "repository.mapper.CsMapper";
   
   public List<CustomService> selectCustomService() {
      SqlSession sqlSession = this.getSqlSessionFactory().openSession();
      String statment = nameSpace+".selectcsservice";
      System.out.println(statment);                     
      return sqlSession.selectList(statment);
   }
    
    
   public Integer insertCustomService(CustomService customservice) {
      SqlSession sqlSession = this.getSqlSessionFactory().openSession();
      try {
      String statment = nameSpace+".insertcsservice";
      System.out.println(statment);                     
      int result = sqlSession.insert(statment,customservice);
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
   
   public Integer deleteCustomService(CustomService customservice) {
      SqlSession sqlSession = this.getSqlSessionFactory().openSession();
      try {
      String statment = nameSpace+".deletecsservice";
      System.out.println(statment);                     
      int result = sqlSession.delete(statment,customservice);
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
