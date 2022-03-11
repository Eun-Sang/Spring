package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Pension;

@Repository
public interface PensionDAO {

	public List<Pension> selectBookingList();
	
	public int deletebookingById(
			@Param("id") int id);
			
}
