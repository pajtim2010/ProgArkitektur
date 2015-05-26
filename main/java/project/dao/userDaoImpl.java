package project.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.model.userEntity;

@Repository
public class userDaoImpl implements userDAO  {

	@Autowired
        private SessionFactory sessionFactory;
	
	@Override
	public void addUser(userEntity user) {
		this.sessionFactory.getCurrentSession().save(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<userEntity> getAllUsers() {
		return this.sessionFactory.getCurrentSession().createQuery("FROM User").list();
	}

	@Override
	public void deleteUser(Integer userId) {
		userEntity user = (userEntity) sessionFactory.getCurrentSession().load(
				userEntity.class, userId);
        if (null != user) {
        	this.sessionFactory.getCurrentSession().delete(user);
        }
	}
	
	

}

