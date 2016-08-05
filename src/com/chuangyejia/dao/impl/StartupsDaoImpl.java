package com.chuangyejia.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.Startups;
import com.chuangyejia.dao.IStartupsDao;
import com.chuangyejia.factory.HibernateSessionFactory;
import com.chuangyejia.tools.StartupsTempShow;

public class StartupsDaoImpl implements IStartupsDao {

	@Override
	public boolean saveStartups(Startups startups) {
		// TODO Auto-generated method stub
		
		boolean flag = false;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			session.save(startups);
			
			session.getTransaction().commit();
			flag = true;
		} catch(HibernateException e) {
			flag = false;
System.out.println("dao层中，在StartupsDaoImpl类，创建公司时，进行数据库存储Startups对象时，出现异常！");
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean updateStartups(Startups startups) {
		// TODO Auto-generated method stub
		boolean flag = false;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			session.update(startups);
			
			session.getTransaction().commit();
			flag = true;
		} catch(HibernateException e) {
			flag = false;
System.out.println("dao层中，在StartupsDaoImpl类，更新公司时，进行数据库更新Startups对象时，出现异常！");
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public boolean deleteStartups(Startups startups) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getAllStartupsCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<StartupsTempShow> getStartupTempShows(Integer start, Integer length, String sort) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		List<StartupsTempShow> stsList = new ArrayList<StartupsTempShow>();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from Startups s order by :sort desc").setString("sort", "s."+sort).setMaxResults(length).setFirstResult(start);
			List<Startups> startupsList = (List<Startups>)query.list();
			for(int i = 0; i < startupsList.size(); i++)
				stsList.add(startupsList.get(i).toStartupsTempShow());

			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("dao层中，在StartupsDdaoImpl类，通过start，length，cort来获取Startups对象集合时出错！");
			e.printStackTrace();
		}

		return stsList;
	}

	@Override
	public Startups getStartupsInId(String startupsId) {
		// TODO Auto-generated method stub

		Startups startups = null;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			startups = (Startups)session.get(Startups.class, startupsId);
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("dao层中，在StartupsDdaoImpl类，通过startupsId来获取Startups对象出错！");
			e.printStackTrace();
		}
		return startups;
	}


	
	
	@Override
	public StartupsTempShow getStartupsTempShowInId(String startupsId) {
		// TODO Auto-generated method stub
		StartupsTempShow sts = null;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			Startups startups = (Startups)session.get(Startups.class, startupsId);
			sts = startups.toStartupsTempShow();
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("dao层中，在StartupsDdaoImpl类，通过startupsId来获取Startups对象出错！");
			e.printStackTrace();
		}
		return sts;
	}

	@Override
	public Startups getStartupsInLeaderId(String leaderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isNameRepeat(String startupsName) {
		// TODO Auto-generated method stub
		return false;
	}


}
