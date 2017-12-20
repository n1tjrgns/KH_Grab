package repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Payment;


@Repository
public class PaymentSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.PaymentMapper";


	public Payment selectMaxPayNum() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectMaxPayNumByCondition";
		return sqlSession.selectOne(statment);
	}
	
	public Integer insertPayment(Payment payment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".insertPaymentByCondition";
			int result = sqlSession.insert(statment, payment);
			if (result > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return result;
		} finally {
			sqlSession.close();
		}
	}
}
