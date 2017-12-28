package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.JoinBuyListABuyProduct;

@Repository
public class JoinBuyListABuyProductRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.JoinBuyListABuyProductMapper";
	
	public List<JoinBuyListABuyProduct> selectBuyProductListEmail(String email) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectProductEmailByCondition";
		return sqlSession.selectList(statment, email);
	}
}
