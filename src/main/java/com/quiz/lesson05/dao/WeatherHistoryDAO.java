package com.quiz.lesson05.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WeatherHistoryDAO {
	public List<WeatherHistory> selectWeatherHistoryList;
	
	public void interWeatherHistory(
			@Param("date") Date date,
			@Param("weather") String weather,
			@Param("temperatures") float temperatures,
			@Param("precipitation") float precipitation,
			@Param("microDust") String microDust,
			@Param("windSpeed") float windSpeed);
			
	public void addWeatherHistory(
			@Param("date") String date,
			@Param("weather")String weather,
			@Param("microDust")String microDust,
			@Param("temperatures")double temperatures,
			@Param("precipitation")double precipitation,
			@Param("windSpeed")double windSpeed);
}
