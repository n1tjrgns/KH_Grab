package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Bucketlist;
import model.Comment;
@Repository
public class BucketSessionRepository  extends AbstractRepository {	
		private final String nameSpace = "repository.mapper.BucketMapper";
		
		public List<Bucketlist> selectBucketlist() {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucketALL";
										
			return sqlSession.selectList(statment);
		}
}
