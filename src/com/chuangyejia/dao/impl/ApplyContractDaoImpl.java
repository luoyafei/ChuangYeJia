package com.chuangyejia.dao.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.ApplyContract;
import com.chuangyejia.dao.IApplyContractDao;
import com.chuangyejia.factory.HibernateSessionFactory;

public class ApplyContractDaoImpl implements IApplyContractDao {

	@Override
	public boolean saveApplyContract(ApplyContract ac) {
		// TODO Auto-generated method stub
		
		boolean flag = false;
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			session.save(ac);
			
			session.getTransaction().commit();
			flag = true;
		} catch (HibernateException e) {
			flag = false;
System.out.println("dao层中，ApplyContractDaoImpl中，将申请合同插入数据库出错！");
			e.printStackTrace();
		}
		
		return flag;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ApplyContract> getApplyContractInStartupsId(String startupsId) {
		// TODO Auto-generated method stub
		
		List<ApplyContract> acs = new ArrayList<ApplyContract>();
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			String ejbql = "from ApplyContract ac where ac.applyStartupsId = :applyStartupsId";
			
			Query query = session.createQuery(ejbql).setString("applyStartupsId", startupsId);
			acs = (ArrayList<ApplyContract>)query.list();
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
System.out.println("在ApplyContractDaoImpl.java中，获取某公司下的所有申请出错！");
			e.printStackTrace();
		}
		
		
		return acs;
	}

	@Override
	public boolean updateApplyContract(ApplyContract ac) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		boolean flag = false;
		
		try {

			session.beginTransaction();
			
			session.update(ac);
			
			session.getTransaction().commit();
			flag = true;
		} catch(HibernateException e) {
			flag = false;
System.out.println("更新申请合同时，出现错误！");
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public boolean deleteApplyContract(ApplyContract ac) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		boolean flag = true;
		try {
			session.beginTransaction();
			
			ApplyContract accplyC = (ApplyContract)session.load(ApplyContract.class, ac.getApplyId());
			session.delete(accplyC);

			session.getTransaction().commit();
		} catch(HibernateException e) {
			flag = false;
System.out.println("删除申请时出错！");
			e.printStackTrace();
		}
		
System.out.println(flag);
		
		return flag;
	}

	@Override
	public ApplyContract getApplyContractInApplyId(String applyId) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		ApplyContract ac = null;
		try {
			session.beginTransaction();
			
			String ejbql = "from ApplyContract ac where ac.applyId = :applyId";
			
			Query query = session.createQuery(ejbql).setString("applyId", applyId);
			ac = (ApplyContract)query.uniqueResult();

			session.getTransaction().commit();
		} catch(HibernateException e) {
			ac = null;
System.out.println("通过applyId，获取申请时出错！");
			e.printStackTrace();
		}
		
		return ac;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ApplyContract> getApplyContractInUserId(String userId) {
		// TODO Auto-generated method stub

		List<ApplyContract> acs = new ArrayList<ApplyContract>();
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			String ejbql = "from ApplyContract ac where ac.applyOrganiserId = :applyOrganiserId";
			
			Query query = session.createQuery(ejbql).setString("applyOrganiserId", userId);
			acs = (ArrayList<ApplyContract>)query.list();
			

			session.getTransaction().commit();
		} catch(HibernateException e) {
			acs = null;
System.out.println("通过用户Id，获取申请集合时出错！");
			e.printStackTrace();
		}
		
		return acs;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ApplyContract> getApplyContractInUserId(String userId, String status) {
		// TODO Auto-generated method stub
		
		List<ApplyContract> acs = new ArrayList<ApplyContract>();
		
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			String ejbql = "from ApplyContract ac where ac.applyOrganiserId = :applyOrganiserId and ac.applyStatus = :applyStatus";
			
			Query query = session.createQuery(ejbql).setString("applyOrganiserId", userId).setString("applyStatus", status);
			acs = (ArrayList<ApplyContract>)query.list();
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
			acs = null;
System.out.println("通过用户Id，根据状态获取申请集合时出错！");
			e.printStackTrace();
		}
		
		return acs;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ApplyContract> getApplyContractInStartupsId(String startupsId, String status) {
		// TODO Auto-generated method stub
		List<ApplyContract> acs = new ArrayList<ApplyContract>();
		
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			String ejbql = "from ApplyContract ac where ac.applyStartupsId = :applyStartupsId and ac.applyStatus = :applyStatus";
			
			Query query = session.createQuery(ejbql).setString("applyStartupsId", startupsId).setString("applyStatus", status);
			acs = (ArrayList<ApplyContract>)query.list();
			
			session.getTransaction().commit();
		} catch(HibernateException e) {
			acs = null;
System.out.println("通过公司Id，根据状态获取申请集合时出错！");
			e.printStackTrace();
		}
		
		return acs;
	}

	@Override
	public List<ApplyContract> getApplyContractInStatus(String status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ApplyContract> getApplyContractInCreateDate(Timestamp createDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean canApplyContract(String userId, String startupsId, String status) {
		// TODO Auto-generated method stub
		boolean flag = false;

		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction(); 
			
			String ejbql = "from ApplyContract ac where ac.applyStartupsId = :applyStartupsId and ac.applyStatus = :applyStatus and ac.applyOrganiserId = :applyOrganiserId";
			
			Query query = session.createQuery(ejbql).setString("applyStartupsId", startupsId).setString("applyStatus", status).setString("applyOrganiserId", userId);

			int count = query.list().size();

			session.getTransaction().commit();
			
			if(count == 0)
				flag = true;
			else
				flag = false;
		} catch(HibernateException e) {
			flag = false;
System.out.println("通过公司Id,用户Id，申请状态stage来找申请时出错！");
			e.printStackTrace();
		}
		return flag;
	}
}
