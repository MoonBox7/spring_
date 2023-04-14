package com.jafa.dao;

import org.apache.ibatis.annotations.Mapper;

import com.jafa.domain.MemberVO;

@Mapper
public interface MemberDao {
	
	// 회원가입
	void signup(MemberVO vo);

	// 아이디 중복체크
	int idCheck(String memberId);
}
