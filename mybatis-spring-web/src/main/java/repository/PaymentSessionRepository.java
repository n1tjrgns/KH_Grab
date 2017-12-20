package repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Payment;


@Repository
public class PaymentSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.PaymentMapper";


	public Integer selectMaxPayNum() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectMaxPayNumByCondition";
		return sqlSession.selectOne(statment);
	}
	
	public Integer insertPayment(int maxPayNum, int maxBuyNum, String howPay, int total_price, String dlv_msg) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".insertPaymentByCondition";
			Payment payment = new Payment(maxPayNum, maxBuyNum, howPay, total_price, dlv_msg);
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
