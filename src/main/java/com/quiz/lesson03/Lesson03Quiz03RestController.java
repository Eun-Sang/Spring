package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;

@RequestMapping("/lesson03/quiz03")
@RestController
public class Lesson03Quiz03RestController {

	@Autowired
	private RealEstateBO realEstateBO;
	
	// 요청 url : http://localhost/lesson03/quiz03/1?id=8&...
	@RequestMapping("/lesson03/quiz03/1")
	public String quiz03(
			@RequestParam(value="id") int id,
			@RequestParam(value="type") String type,
			@RequestParam(value="price") int price) {
		
		int row = realEstateBO.updateRealEstateById(id, type, price);
		return "변경 완료: " + row;
	}
	
	// 요청 url : http://localhost/lesson03/quiz04/1?id=21
	
	@RequestMapping("/2")
	public String quiz03_2(
			@RequestParam(value="id") int id) {
		int row = realEstateBO.deleteRealEstateById(id);
		return "삭제 완료: " + row;
	}
}
