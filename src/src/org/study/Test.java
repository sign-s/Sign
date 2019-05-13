package org.study;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.study.Personalquery.Personal;


public class Test {
	public static void main(String[] args) throws IOException {
	// 1 读取配置文件
	String resource = "mybatis-config.xml";
	InputStream inputStream = Resources.getResourceAsStream(resource);
	
	// 2 根据配置文件创造SqlSessionFactory
	SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	
	// 3 工厂创建SqlSession
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 4 执行查询操作
	Personal personal = sqlSession.selectOne("mapper.QueryMapper.findqueryById", "1761213");
	//gouwu.setStorage(200);
	// 5 打印结果信息
	System.out.println(personal.toString());
	
	
	//关闭
	sqlSession.close();
	}
}