package com.quiz.lesson06;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Lesson06Quiz03Controller {
	
	@Autowired	
	
	// 예약목록화면
	@RequestMapping("/lesson06/quiz03/booking_list_view")
	public String deleteBooking(
			@RequestParam(value="id") int id) {
				
		
		return "/lesson06/booking_list";
	}
	
	// 예약삭제하기 ajax요청
	@ResponseBody
	@DeleteMapping("/lesson06/quiz03/delete_booking")
	public Map<String, object> deleteBooking(
			)
	return;
}
