package com.jafa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jafa.dao.MemberDao;
import com.jafa.domain.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	MemberDao memberDao;

	// 회원가입
	public void signup(MemberVO vo) {
		memberDao.signup(vo);
	};
}
