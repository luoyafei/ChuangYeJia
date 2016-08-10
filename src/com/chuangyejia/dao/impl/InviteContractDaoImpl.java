package com.chuangyejia.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.chuangyejia.bean.InviteContract;
import com.chuangyejia.dao.IInviteContractDao;
import com.chuangyejia.factory.HibernateSessionFactory;

public class InviteContractDaoImpl implements IInviteContractDao {

	@Override
	public boolean saveInviteContract(InviteContract ic) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		boolean flag = false;
		try {
			session.beginTransaction();
			
			session.save(ic);
			
			session.getTransaction().commit();
			flag = true;
		} catch(HibernateException e) {
			flag = false;
			System.out.println("存储邀请合同出错！");
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean deleteInviteContract(InviteContract ic) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateInviteContract(InviteContract ic) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public InviteContract getInviteContractInInviteId(String inviteId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InviteContract> getInviteContractsInStartupsId(String startupsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InviteContract> getInviteContractsInInviteUserId(String inviteUserId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InviteContract> getInviteContractsInStartupsId(String startupsId, String inviteStatus) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InviteContract> getInviteContractsInInviteUserId(String inviteUserId, String inviteStatus) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean canInviteContract(String startupsId, String inviteUserId, String inviteStatus) {
		// TODO Auto-generated method stub
		boolean flag = false;

		Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		try {
			session.beginTransaction(); 
			
			String ejbql = "from InviteContract ic where ic.inviteOrganiserStartupsId = :startupsId and ic.inviteStatus = :inviteStatus and ic.inviteUserId = :inviteUserId";
			
			Query query = session.createQuery(ejbql).setString("startupsId", startupsId).setString("inviteStatus", inviteStatus).setString("inviteUserId", inviteUserId);

			int count = query.list().size();

			session.getTransaction().commit();
			
			if(count == 0)
				flag = true;
			else
				flag = false;
		} catch(HibernateException e) {
			flag = false;
System.out.println("通过公司Id,用户Id，邀请状态stage来找邀请时出错！");
			e.printStackTrace();
		}
		return flag;
	}

}
