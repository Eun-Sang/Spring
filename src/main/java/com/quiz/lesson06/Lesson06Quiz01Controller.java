package com.quiz.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Lesson06Quiz01Controller {

	@Autowired
	private FavoriteBO FavoriteBO;
	
	// favorite 추가 화면 
	@RequestMapping("/lesson06/quiz01/add_favorite")
	public String quiz01() {
		return "/lesson06/quiz01/add_favorite";
	}
	
	@ResponseBody
	@PostMapping("/add_favorite")
	public String addFavorite(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		
		
		return "성공";
	}
	@RequestMapping("/get_favorite")
	public String getFavorite() {
		return "lesson06/quiz01/get_favorite";
	}
}
