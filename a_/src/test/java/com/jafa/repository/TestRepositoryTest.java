package com.jafa.repository;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestRepositoryTest {

	@Autowired
	TestRepository testRepository;
	
	@Test
	public void test() {
		System.out.println(testRepository.getCurrenDate());
	}

}
