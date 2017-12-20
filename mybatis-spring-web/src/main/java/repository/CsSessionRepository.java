package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.CustomService;

public class CsSessionRepository extends AbstractRepository{
	
	private final String nameSpace = "repository.mapper.CsMapper";
	
	public List<CustomService> selectCustomService() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace+".selectcsservice";
		System.out.println(statment);							
		return sqlSession.selectList(statment);
	}
}

