package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.FavoriteDAO;

@Service
public class FavoriteBO {

	public List<Favorite> getFavoriteList() {
		
		return FavoriteDAO.selectFavoriteList;
	}
}
