package com.jafa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jafa.domain.MemberDTO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {
	
	// 회원가입 폼
	@GetMapping("/signup")
	public String signup(MemberDTO memberDTO) {
		System.out.println("회원가입 접속");
		return "/member/signup";
		
	}
	
	// 회원가입 처리
	@PostMapping("/signup")
	public String join(MemberDTO memberDTO, Errors errors, RedirectAttributes rttr) {
		if(errors.hasErrors()) {
			System.out.println("에러!");
			return "/member/signup";
		}
		log.info(memberDTO);
		return "redirect:/member/signin";		
	}
	
	// 로그인 폼
	@GetMapping("/signin")
    public void signin() {
		System.out.println("로그인 접속");
    }

}

