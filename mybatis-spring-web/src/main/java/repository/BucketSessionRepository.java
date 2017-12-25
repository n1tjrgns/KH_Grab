package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Bucketlist;
import model.Reservation;
import model.Reservation_Bucketlist;
@Repository
public class BucketSessionRepository  extends AbstractRepository {	
		private final String nameSpace = "repository.mapper.BucketMapper";
		
		public List<Bucketlist> selectBucketlist() {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucketALL";
										
			return sqlSession.selectList(statment);
		}
		
		public List<Bucketlist> selectBucketlist_search(String search) {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucketSearch";
										
			return sqlSession.selectList(statment,search);
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
		
		public List<Reservation> selectReservList(Reservation reservation) {
			System.out.println(reservation.getBkName()+"selectReservList"+reservation.getResInt());
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectReservList";
			return sqlSession.selectList(statment,reservation);
			
		}
		
		public List<Reservation_Bucketlist> selectReservList_mypage(Reservation_Bucketlist reservation_bucketlist) {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment="";
			if(reservation_bucketlist.getResCheck()!=null) {
				System.out.println(reservation_bucketlist.getBkCheck()+"getBkCheck");
				
				 statment = nameSpace+".selectReservList_mypage_NY";
			}else {
			
			//System.out.println(reservation_bucketlist.getmEmail()+"selectReservList_mypage");
			 statment = nameSpace+".selectReservList_mypage";
			}
			
			return sqlSession.selectList(statment,reservation_bucketlist);
			
		}
		
		public Integer updateReservList_mypage(Reservation reservation) {
			System.out.println(reservation.getBkName()+"updateReservList_mypage"+reservation.getResCheck());
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
				
			String statment = nameSpace+".updateReservList_mypage";
			Integer result = sqlSession.update(statment,reservation);
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
		
		
