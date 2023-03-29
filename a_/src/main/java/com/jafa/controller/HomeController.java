package com.jafa.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home(Model model) {
		
		Date date = new Date(); //현재 날짜 및 시간을 나타내는 Date 객체를 생성
		model.addAttribute("Date",date);
		
		return "index";
	}
}