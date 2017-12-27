package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Product;

@Repository
public class ProductSessionRepository extends AbstractRepository {

	private final String nameSpace = "repository.mapper.ProductMapper";
	private final String nameSpace2 = "repository.mapper.BuyProductMapper";

	public List<Product> selectProductList() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectProductListByCondition";
		return sqlSession.selectList(statment);
	}

	public Product selectProduct(String p_name) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectProductByCondition";
		return sqlSession.selectOne(statment, p_name);
	}
	
	public List<Product> selectCompanyProductList(String p_email) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace + ".selectCompanyProductListByCondition";
		return sqlSession.selectList(statment);
	}
	

	public Integer insertProduct(Product product) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".insertProductByCondition";
			int result = sqlSession.insert(statment, product);
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

	public Integer updateProduct(Product product) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".updateProductByCondition";
			int result = sqlSession.update(statment, product);
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

	public Integer deleteProduct(Product product) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statment = nameSpace + ".deleteProductByCondition";
			int result = sqlSession.delete(statment, product);
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
