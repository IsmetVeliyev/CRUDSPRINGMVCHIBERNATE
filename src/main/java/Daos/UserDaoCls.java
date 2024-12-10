package Daos;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import Interfaces.UserDAO;
import Model.User;

public class UserDaoCls implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void saveStudent(User user) {
		sessionFactory.getCurrentSession().save(user);
	}
	@Transactional
	@Override
	public ArrayList<User> getStudent() {
		
		 List<User> users = sessionFactory.getCurrentSession().createQuery("From User",User.class).getResultList();
		 
		 return (ArrayList<User>) users;
		
	}
	@Transactional
	@Override
	public void deleteStudent(int id) {
		
		sessionFactory.getCurrentSession().createQuery("delete User where id=:id")
		.setParameter("id",id)
		.executeUpdate();
	}
	@Transactional
	@Override
	public void updateStudent(User user) {
		sessionFactory.getCurrentSession().update(user);
	
	}

}
