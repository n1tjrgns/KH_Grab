package repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.BuyList;


@Repository
public class BuyListSessionRepository extends AbstractRepository {
	private final String nameSpace = "repository.mapper.BuyListMapper";

	public Integer insertBuyList(int maxBuyNum, String memberName, int qty) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".insertBuyListByCondition";
			BuyList buyList = new BuyList(maxBuyNum, memberName, qty);
			int result = sqlSession.insert(statment, buyList);
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