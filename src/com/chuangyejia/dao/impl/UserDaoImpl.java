package com.chuangyejia.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.User;
import com.chuangyejia.dao.IUserDao;
import com.chuangyejia.factory.HibernateSessionFactory;

public class UserDaoImpl implements IUserDao {

	@SuppressWarnings("finally")
	@Override
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
System.out.println(user.toString());
		boolean flag = false;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			flag = true;
		} catch(HibernateException e) {
			flag = false;
System.out.println("Hibernate往数据库中插入User数据时出现异常！");
			e.printStackTrace();
		} finally {
			if(session.isOpen()) {
				session.close();
				session = null;
			}
			return flag;
		}

	}

	@Override
	public boolean deleteUser(String userId) {
		// TODO Auto-generated method stub
		
		return false;
	}

	
	@SuppressWarnings("finally")
	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
//System.out.println(user.toString());
		boolean flag = false;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.update(user);
			session.getTransaction().commit();
			flag = true;
		} catch(HibernateException e) {
			flag = false;
System.out.println("Hibernate往数据库中更新User数据时出现异常！");
			e.printStackTrace();
		} finally {
			if(session.isOpen()) {
				session.close();
				session = null;
			}
			return flag;
		}

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
		
		Query q = session.createQuery("select userEmail from User u where u.userEmail = :email");
		q.setString("email", email);
		int count = q.list().size();
		session.getTransaction().commit();
		
		if(count == 0)
			return false;//数据库中没有该email
		else
			return true;//有
	}

	@SuppressWarnings("finally")
	@Override
	public User checkEmailAndPassword(User user) {
		// TODO Auto-generated method stub
		boolean flag = false;
		
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query q = session.createQuery("from User u where u.userEmail = :email and u.userPassword = :password");
			q.setString("email", user.getUserEmail());
			q.setString("password", user.getUserPassword());
			int count = q.list().size();
			if(count == 1) {
				flag =  true;
				user = (User)q.list().get(0);
			}
			session.getTransaction().commit();
			
		} catch(HibernateException e) {
			flag = false;
System.out.println("验证用户的邮箱和密码时出错！");
			e.printStackTrace();
		} finally {
			if(session.isOpen()) {
				session.close();
				session = null;
			}
			if(flag)
				return user;
			else
				return null;
		}
	}

}
