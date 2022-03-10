package com.quiz.lesson06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Lesson06Quiz02Controller {
	
	@RequestMapping("/lesson06/quiz02/add_favorite")
	public String addFavorite() {
		return "/lesson06/add_favorite";
	}
	
	// 주소의 중복확인 - AJAX를 통해 오는 요청
	@ResponseBody
	@PostMapping("/lesson06/quiz02/check_duplication_url")
	public Map<String, Boolean> checkDuplication(
			@RequestParam("url") String url) {
		
		Map<String, Boolean> result = new HashMap<>();
		
		
		result.put("result", true);
		
		return result;
	}
	
	// ajax 요청
	@ResponseBody
	@PostMapping("/lesson06/quiz02/delete_favorite_url") 
	public Map<String, String > deleteFavorite(
			@RequestParam("id") int id) {
		
		Map<String, String> result = new HashMap<>();
		result.put("result", "success");
		
		
		
		return result;
	}
	
	
}
