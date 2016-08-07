package com.chuangyejia.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.User;
import com.chuangyejia.dao.IUserDao;
import com.chuangyejia.factory.HibernateSessionFactory;

public class UserDaoImpl implements IUserDao {

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
		} 
		return flag;

	}

	@Override
	public boolean deleteUser(String userId) {
		// TODO Auto-generated method stub
		
		return false;
	}

	
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
		}
		return flag;

	}

	@Override
	public int getAllUsersCount(String copartnerCategory) {
		// TODO Auto-generated method stub
		Long count = new Long(0);
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			if(copartnerCategory.equals("null")) {
				String ejbql = "select count(*) from User u";
				count = (Long)session.createQuery(ejbql).uniqueResult();
			} else {
				String ejbql = "select count(*) from User u where u.copartnerCategory = :copartnerCategory";
				count = (Long)session.createQuery(ejbql).setString("copartnerCategory", copartnerCategory).uniqueResult();
			}
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("在dao层，UserDaoImpl中，根据copartnerCategory获取用户个数出错");
			e.printStackTrace();
		}
		return count.intValue();
	}

	@Override
	public List<User> getUsers(Integer start, Integer length) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUsers(Integer start, Integer length, String copartnerCategory, String sort) {
		// TODO Auto-generated method stub

		List<User> users = new ArrayList<User>();
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			if(copartnerCategory.equals("null")) {
				String ejbql = "from User u order by :sort desc";
				Query query = session.createQuery(ejbql).setString("sort", sort).setFirstResult(start*length).setMaxResults(length);
				users = (ArrayList<User>)query.list();
			} else {
				String ejbql = "from User u where u.copartnerCategory = :copartnerCategory order by :sort desc";
				Query query = session.createQuery(ejbql).setString("copartnerCategory", copartnerCategory).setString("sort", sort).setFirstResult(start*length).setMaxResults(length);
				users = (ArrayList<User>)query.list();
			}
			
			/**
			 * 此处不进行关闭，交由调用它的service层关闭，这样就不会处理懒加载错误！
			 * session.getTransaction().commit();
			 */
		} catch(HibernateException e) {
System.out.println("在dao层，获取根据start, length, copartnweCategory获取用户集时出错！");
			e.printStackTrace();
		}
		
		return users;
	}

	@Override
	public User getUserInId(String userId) {
		// TODO Auto-generated method stub
		User user = null;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			user = (User)session.get(User.class, userId);
			
			/**
			 * 此处不关闭！交由service层关闭！
			 * session.getTransaction().commit();
			 */
			
		} catch(HibernateException e) {
System.out.println("根据UserId获取User对象时，出错！");
			e.printStackTrace();
		}
		return user;
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
		}
		if(flag)
			return user;
		else
			return null;
	}

	
}
