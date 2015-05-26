package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import project.dao.userDAO;
import project.model.userEntity;

@Service
public class userManagerImpl implements userManager {
	
	@Autowired
        private userDAO userDAO;

	@Override
	@Transactional
	public void addUser(userEntity user) {
		userDAO.addUser(user);
	}

	@Override
	@Transactional
	public List<userEntity> getAllUsers() {
		return userDAO.getAllUsers();
	}

	@Override
	@Transactional
	public void deleteUser(Integer userId) {
		userDAO.deleteUser(userId);
	}

	public void setUserDAO(userDAO userDAO) {
		this.userDAO = userDAO;
	}
}
