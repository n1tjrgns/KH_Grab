package repository;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public abstract class AbstractRepository {
	private static SqlSessionFactory sqlSessionFactory;
	static {// 객체가 생성될 때 마다 초기화시킴. 
		setSqlSessionFactory();
	}
	
	public static void setSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream inputStream=null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	
	}
	
	//return 메소드
	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
	
	
}
