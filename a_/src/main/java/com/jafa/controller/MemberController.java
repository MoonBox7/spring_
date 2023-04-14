package com.jafa.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jafa.dao.MemberDao;
import com.jafa.domain.MemberDTO;
import com.jafa.domain.MemberVO;
import com.jafa.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private MemberDao dao;
	
	// 회원가입 폼
	@GetMapping("/signup")
	public String signupForm(MemberDTO memberDTO) {
		System.out.println("회원가입 접속");
		return "/member/signup";

	}

	// 회원가입 처리
	@PostMapping("/signup") // @Valid MemberDTO객체에 대해 유효성 검사를 실행하도록 지정
	public String signup(@Valid MemberVO vo, RedirectAttributes rttr ) throws Exception{
		System.out.println("로그인 포스트 도착?");
		System.out.println(vo);
		log.info("회원가입 요청 : "+vo);
		
		System.out.println("222");
		service.signup(vo);
		rttr.addFlashAttribute("msg", "회원가입이 완료되었습니다. 로그인 해주세요.");

		if (vo.getPhoneNumber() == null) {
			vo.setPhoneNumber("");
		}
		return "redirect:/member/signin";
	}
	
	// 아이디 중복체크
	@RequestMapping("/idCheck")
	@ResponseBody
	public String idCheck(@RequestBody String memberId) {
		System.out.println(memberId);
		System.out.println("중복체크 확인 중~~~~!ㅡㅡ");
		String result = ""+dao.idCheck(memberId);
		System.out.println(result);
		return result;
	}

	// 로그인 폼
	@GetMapping("/signin")
	public void signin() {
		System.out.println("로그인 접속");
	}

}
