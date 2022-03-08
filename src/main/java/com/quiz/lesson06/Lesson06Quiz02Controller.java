package com.quiz.lesson06;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Lesson06Quiz02Controller {
	
	@RequestMapping("/lesson06/quiz02/add_favorite")
	public String addFavorite() {
		return "/lesson06/add_favorite";
	}
	
	@ResponseBody
	@RequestMapping("lesson06/quiz02/is_duplication")
	public Map<String, Boolean> isDuplication(
			@RequestParam("address") String address) {
		
	}
}
