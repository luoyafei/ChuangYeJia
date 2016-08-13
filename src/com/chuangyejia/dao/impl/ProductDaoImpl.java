package com.chuangyejia.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.Product;
import com.chuangyejia.dao.IProductDao;
import com.chuangyejia.factory.HibernateSessionFactory;

public class ProductDaoImpl implements IProductDao {

	@Override
	public boolean saveProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		boolean flag = true;
		try {
			session.beginTransaction();
			
			session.save(p);
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
			flag = false;
System.out.println("存储Product对象出错！");
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public boolean deleteProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		boolean flag = true;
		try {
			session.beginTransaction();
			
			session.delete(p);
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
			flag = false;
System.out.println("删除Product对象出错！");
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public boolean updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		boolean flag = true;
		try {
			session.beginTransaction();
			
			session.update(p);
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
			flag = false;
System.out.println("更新Product对象出错！");
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public Product getProductInId(String productId) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		Product product = null;
		try {
			session.beginTransaction();
			
			product = (Product)session.get(Product.class, productId);
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("通过productId,获取Product对象出错！");
			e.printStackTrace();
		}
		
		return product;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductsInStartupsId(String startupsId) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		List<Product> products = null;
		try {
			session.beginTransaction();
			String ejbql = "from Product p where p.productStartups.startupsId = :startupsId";
			Query query = session.createQuery(ejbql).setString("startupsId", startupsId);
			products = (ArrayList<Product>)query.list();
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("通过productId,获取Product对象出错！");
			e.printStackTrace();
		}
		
		return products;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductsListToShow(Integer start, Integer length, String sort) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		List<Product> ps = null;
		try {
			session.beginTransaction();
			Query query = session.createQuery("from Product p order by :sort desc").setString("sort", "p."+sort).setMaxResults(length).setFirstResult(start*length);
			ps = (ArrayList<Product>)query.list();
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("dao层中，在ProductDaoImpl类，通过start，length，cort来获取Product对象集合时出错！");
			e.printStackTrace();
		}

		return ps;
	}

}
