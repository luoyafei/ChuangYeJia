package com.chuangyejia.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.User;
import com.chuangyejia.dao.IUserDao;
import com.chuangyejia.factory.HibernateSessionFactory;

public class UserDaoImpl implements IUserDao {

	@Override
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getAllUsersCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<User> getUsers(Integer start, Integer length) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserInId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserInEmail(String userEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserInIdCard(String idCard) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserInWeChat(String weChat) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserInTel(String tel) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Query q = session.createQuery("from User u where u.userEmail = :email");
		q.setString("email", email);
		int count = q.list().size();
		session.getTransaction().commit();
		
		if(count == 0)
			return false;//数据库中没有该email
		else
			return true;//有
	}

	@Override
	public boolean checkEmailAndPassword(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}

}
