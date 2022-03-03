package com.quiz.lesson05.bo;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeatherHistoryBO {

	@Autowired
	private WeatherHistoryDAO WeatherHistoryDAO;
	
	public void addWeatherHistory(
			Date date, 
			String weather, 
			float temperatures,
			float precipitation,
			String microDust,
			float windSpeed) {
		WeatherHistoryDAO
	}
}
