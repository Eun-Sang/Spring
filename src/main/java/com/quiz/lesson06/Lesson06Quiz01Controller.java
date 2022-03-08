package com.quiz.lesson06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;

@Controller
public class Lesson06Quiz01Controller {
	
	// 즐겨찾기 추가하는 화면
	@Autowired
	private FavoriteBO FavoriteBO;
	
	// favorite 추가 화면 
	@RequestMapping("/lesson06/quiz01/add_favorite_view")
	public String addFavoriteView() {
		return "/lesson06/add_favorite";
	}
	
	// 즐겨찾기 추가 수행 - AJAX가 요청하는 API
	@ResponseBody	// 응답값이 데이트 String 으로 내려간다.
	@PostMapping("/lesson06/quiz01/add_favorite")
	public Map<String, String> addFavorite(
			@RequestParam("site") String site,
			@RequestParam("address") String address) {
		
		// DB insert
		FavoriteBO.addFavorite(site, address);
		// 응답값 구성(map->json-String)
		Map<String, String> result = new HashMap<>();
		result.put("result", "success");
		// return 응답값;
		return result;
	}
	
	// 즐겨 찾기 목록 화면
	@RequestMapping("/lesson06/quiz01/favorite_list_view")
	public String favoriteListView(Model model) {
		
		// DB select
		
		return "lesson06/quiz01/favorite_list";
	}
}
