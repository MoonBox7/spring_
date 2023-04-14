package com.jafa.config;

import java.io.IOException;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration //이 클래스가 Spring 컨테이너에 대한 Bean 정의를 제공한다는 것을 나타냄
@MapperScan("com.jafa.dao")
public class RootConfig { // RootConfig 클래스는 여러 개의 Bean을 정의

	// DataSource Bean은 드라이버, URL, 사용자 이름 및 비밀번호와 같은 데이터베이스 연결 속성을 구성하는 데 사용
	@Bean
	public DataSource dataSource() { 
		DataSource dataSource = new DataSource();
		dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
		dataSource.setUsername("system");
		dataSource.setPassword("1234");
		return dataSource;
	}
	
	@Bean
	public SqlSessionFactoryBean sqlSessionFactory() throws IOException{ //SqlSessionFactoryBean을 생성
		SqlSessionFactoryBean factory = new SqlSessionFactoryBean(); // SqlSessionFactoryBean은 MyBatis 프레임워크에서 제공하는 클래스로, SqlSession 객체를 생성하는 데 사용
		factory.setDataSource(dataSource()); // 데이터베이스 연결에 사용되는 DataSource 객체를 지정
		factory.setMapperLocations(new PathMatchingResourcePatternResolver() //MyBatis 매퍼 인터페이스의 위치를 나타내는 XML 파일의 경로를 지정, 
					.getResources("classpath:mappers/**/*Mapper.xml")); //(new P~) : classpath:mappers 디렉토리와 그 하위 디렉토리에 있는 모든 XML 파일을 검색
		return factory;
	}

	@Bean
	public SqlSessionTemplate sqlSessionTemplate() throws Exception { // MyBatis SqlSession의 구현체로, MyBatis의 SQL 매퍼 메서드를 호출하는 데 사용
		return new SqlSessionTemplate(sqlSessionFactory().getObject()); // SqlSessionTemplate 객체를 생성할 때 SqlSessionFactory 객체를 인자로 전달. sqlSessionFactory().getObject()는 SqlSessionFactory 객체를 반환
	}
	
}
