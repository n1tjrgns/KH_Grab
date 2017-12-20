package repository;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.BuyProduct;
import model.Comment;


@Repository
public class BuyProductSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.BuyProductMapper";


	public BuyProduct selectMaxBuyNum() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectMaxBuyNumByCondition";
		return sqlSession.selectOne(statment);
	}
	
	public Integer insertBuyProduct(int BuyNum, Date buyDate, String totalPrice, String howDeliver, String receiver, String receiAddr,
			String mEmail) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".insertBuyProductByCondition";
			BuyProduct buy = new BuyProduct(BuyNum, buyDate, totalPrice, howDeliver, receiver, receiAddr, mEmail);		
			int result = sqlSession.insert(statment, buy);
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
