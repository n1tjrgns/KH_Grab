package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Linkdata;
import model.Member;


@Repository
public class GraphSessionRepository extends AbstractRepository{
	
	private final String nameSpace = "repository.mapper.GraphMapper";

	public List<Linkdata> selectLinkdata(String mEmail) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statment = nameSpace+".selectLinkdataBymEmail";
		
		return sqlSession.selectList(statment,mEmail);
	}
}
