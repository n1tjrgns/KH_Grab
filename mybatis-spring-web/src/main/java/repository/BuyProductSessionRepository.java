package repository;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.BuyProduct;


@Repository
public class BuyProductSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.BuyProductMapper";


	public BuyProduct selectMaxBuyNum() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectMaxBuyNumByCondition";
		return sqlSession.selectOne(statment);
	}
	
	public Integer insertBuyProduct(BuyProduct buyProduct) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".insertBuyProductByCondition";
			int result = sqlSession.insert(statment, buyProduct);
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
