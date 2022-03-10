package com.quiz.lesson06.bo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.FavoriteDAO;
import com.quiz.lesson06.model.Favorite;

@Service
public class FavoriteBO {

	@Autowired
	private FavoriteDAO favoriteDAO;
	public void addFavorite(String site, String address) {
		favoriteDAO.interFavorite(site, address);
	}
	
	public List<Favorite> getfavoriteList() {
		return favoriteDAO.selectfavoriteList();
	}
	
	public Favorite getFavoriteByUrl(String url) {
		return favoriteDAO.selectFavoriteByUrl(url);
	}
	
	public int deleteFavoriteById(int id) {
		return favoriteDAO.deleteFavoriteById(id);
	}
}
