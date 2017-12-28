package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Bucket_Review;
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
		
		public List<Reservation_Bucketlist> selectReservList_Mmypage(Reservation reservation) {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectReservList_Mmypage";
										
			return sqlSession.selectList(statment,reservation);
		}
		
		
		public Integer InsertBucket(Bucketlist bl) {
			System.out.println("selectBucketlist_one:"+bl.getBkName());
			if(bl.getBkCheck()==null) {
				bl.setBkCheck("no");
			}
			if(bl.getPhotoURL()==null) {
				bl.setPhotoURL("img\\lego.png");
			}
			if(bl.getBkSort()==null) {
				bl.setBkSort("CB");
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
			try {Integer result=0;
			if(reservation.getResCheck()=="Y")
			{String statment = nameSpace+".deleteReservList_mypage";
			 result = sqlSession.delete(statment,reservation);
			}else {	
			String statment = nameSpace+".updateReservList_mypage";
			 result = sqlSession.update(statment,reservation);
			}
			
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
		
		
		public Integer InsertMemberList_mypage(Reservation reservation) {
			System.out.println(reservation.getBkName()+"updateReservList_mypage"+reservation.getResCheck());
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
				
			String statment = nameSpace+".InsertMemberList_mypage";
			Integer result = sqlSession.insert(statment,reservation);
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
		
		
		public Integer delteReservList_mypage(Reservation reservation) {
			System.out.println(reservation.getBkName()+"delete2"+reservation.getmEmail());
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
				
			String statment = nameSpace+".delteReservList_mypage";
			Integer result = sqlSession.delete(statment,reservation);
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
		
		public Integer InsertBucket_Review(Bucket_Review bucket_review) {
			System.out.println("InsertBucket_Review:"+bucket_review.getBkName());
			if(bucket_review.getBkrvCheck()==null) {
				bucket_review.setBkrvCheck("N");
			}
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
			
			String statment = nameSpace+".InsertBucket_Review";
			 int result = sqlSession.insert(statment,bucket_review);
			 
			 String statment3 = nameSpace+".takeLinkDataNum";
			 Integer bkrvNum = sqlSession.selectOne(statment3,bucket_review);
			 //System.out.println( "0:"+bkrvNum[0]+"1"+bkrvNum[1]);
			 bucket_review.setBkrvNum(bkrvNum);
			 System.out.println("d?"+bucket_review.getBkrvNum());
			 if(result>0) {
				 String statment2 = nameSpace+".InsertLinkData";
				 int result2 = sqlSession.insert(statment2,bucket_review);
				 sqlSession.commit();
				 return result2;
			 }else {
				 sqlSession.rollback();
			 }
			 return result;
			}finally {
				sqlSession.close();
			}
			
			
			
		}
		
		public List<Bucket_Review> selectBucket_Review() {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucket_Review";
										
			return sqlSession.selectList(statment);
		}
		
		public List<Bucket_Review> selectBucket_Review_mypage(Bucket_Review bucket_Review) {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".Bucket_main_review_mypage";
										
			return sqlSession.selectList(statment,bucket_Review);
		}
		
		public List<Bucket_Review> selectBucket_Review_mypage_detail(Bucket_Review bucket_Review) {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			String statment = nameSpace+".selectBucket_Review_mypage_detail";
										
			return sqlSession.selectList(statment,bucket_Review);
		}
		
		public Integer selectBucket_Review_mypage_delete(Bucket_Review bucket_Review) {
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			try {
				String statment = nameSpace+".selectBucket_Review_mypage_delete";
				 int result = sqlSession.delete(statment,bucket_Review);
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
		
		public Integer Bucket_reviewCheck_update(Bucket_Review bucket_Review) {
			Integer YN=0;
			SqlSession sqlSession = this.getSqlSessionFactory().openSession();
			if(bucket_Review.getBkrvCheck().equals("Y")) {
				bucket_Review.setBkrvCheck("N");
				YN=3;
			}else{
				bucket_Review.setBkrvCheck("Y");
				YN=4;
			}
			try {
				String statment = nameSpace+".Bucket_reviewCheck_update";
				 int result = sqlSession.update(statment,bucket_Review);
				 if(result>0) {
					 sqlSession.commit();
					 return YN;
				 }else {
					 sqlSession.rollback();
				 }
				 return result;
				}finally {
					sqlSession.close();
				}
		}
		
		
}
		
		
