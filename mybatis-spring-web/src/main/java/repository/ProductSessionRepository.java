package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Product;

@Repository
public class ProductSessionRepository extends AbstractRepository {
	
	private final String nameSpace = "repository.mapper.ProductMapper";
	
	public List<Product> selectProduct() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace+".selectProductByCondition";
		return sqlSession.selectList(statment);
	}
	

	public Integer insertProduct(Product product) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".insertCommentByCondition";
		 int result = sqlSession.insert(statment,product);
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
	
	public Integer updateProduct(Product product) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".updateCommentByCondition";
		 int result = sqlSession.update(statment,product);
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
	
	public Integer deleteProduct(Product product) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statment = nameSpace+".deleteCommentByCondition";
		 int result = sqlSession.delete(statment,product);
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
