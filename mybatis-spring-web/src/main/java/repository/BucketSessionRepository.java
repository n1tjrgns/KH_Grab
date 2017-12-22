package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Bucketlist;
import model.Reservation;
@Repository
public class BucketSessionRepository  extends AbstractRepository {	
		private final String nameSpace = "repository.mapper.BucketMapper";
		
		public List<Bucketlist> selectBucketlist() {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucketALL";
										
			return sqlSession.selectList(statment);
		}
		
		public List<Bucketlist> selectBucketlist_one(Bucketlist bl) {
		//	System.out.println("selectBucketlist_one:"+bl.getBkName());
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucketOne";
			return sqlSession.selectList(statment,bl);
			
		}
		
		
		public Integer InsertBucket(Bucketlist bl) {
			System.out.println("selectBucketlist_one:"+bl.getBkName());
			if(bl.getBkCheck()==null) {
				bl.setBkCheck("no");
			}
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
			
			String statment = nameSpace+".InsertBucket";
			 int result = sqlSession.insert(statment,bl);
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
		
		public Integer InsertReserv(Reservation rv) {
			System.out.println("InsertReserv:"+rv.getBkName());
			if(rv.getResCf()==null) {
				rv.setResCf("내용 없음");
			}
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
			
			String statment = nameSpace+".InsertReserv";
			 int result = sqlSession.insert(statment,rv);
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
		
		
