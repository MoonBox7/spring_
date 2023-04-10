package com.jafa.config;

import java.io.IOException;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration //이 클래스가 Spring 컨테이너에 대한 Bean 정의를 제공한다는 것을 나타냄
public class RootConfig { // RootConfig 클래스는 여러 개의 Bean을 정의

	// DataSource Bean은 드라이버, URL, 사용자 이름 및 비밀번호와 같은 데이터베이스 연결 속성을 구성하는 데 사용
	@Bean
	public DataSource dataSource() { 
		DataSource dataSource = new DataSource();
		dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
		dataSource.setUsername("springdb");
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

//@MapperScan 어노테이션은 지정된 패키지에서 MyBatis 매퍼 인터페이스를 스캔하는 데 사용됩니다. 
//@PropertySource 어노테이션은 지정된 프로퍼티 파일에서 프로퍼티를 로드하는 데 사용됩니다.
//dataSource: DataSource Bean은 드라이버, URL, 사용자 이름 및 비밀번호와 같은 데이터베이스 연결 속성을 구성하는 데 사용됩니다. @Value 어노테이션은 프로퍼티 파일에서 값을 주입하는 데 사용됩니다.

//messageSource: ReloadableResourceBundleMessageSource Bean은 국제화 지원을 위한 메시지 소스를 구성하는 데 사용됩니다. 이 Bean은 classpath에서 메시지 프로퍼티 파일을 찾도록 구성됩니다.
//
//placeholderConfigurer: PropertySourcesPlaceholderConfigurer Bean은 프로퍼티 값의 placeholder를 해결하는 데 사용됩니다.
//
//multipartResolver: CommonsMultipartResolver Bean은 애플리케이션에서 파일 업로드를 지원하는 데 사용됩니다. 이 Bean은 UTF-8 인코딩을 사용하고 파일 크기에 제한이 없도록 구성됩니다.