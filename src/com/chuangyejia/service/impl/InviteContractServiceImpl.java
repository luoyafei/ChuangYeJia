package com.chuangyejia.service.impl;

import java.util.List;

import com.chuangyejia.bean.InviteContract;
import com.chuangyejia.dao.IInviteContractDao;
import com.chuangyejia.factory.DaoFactory;
import com.chuangyejia.service.IInviteContractService;

public class InviteContractServiceImpl implements IInviteContractService {

	private IInviteContractDao iicd = null;
	
	public InviteContractServiceImpl() {
		super();
		iicd = DaoFactory.createInviteContractDao();
	}

	@Override
	public boolean saveInviteContract(InviteContract ic) {
		// TODO Auto-generated method stub
		return iicd.saveInviteContract(ic);
	}

	@Override
	public boolean deleteInviteContract(InviteContract ic) {
		// TODO Auto-generated method stub
		return iicd.deleteInviteContract(ic);
	}

	@Override
	public boolean updateInviteContract(InviteContract ic) {
		// TODO Auto-generated method stub
		return iicd.updateInviteContract(ic);
	}

	@Override
	public InviteContract getInviteContractInInviteId(String inviteId) {
		// TODO Auto-generated method stub
		return iicd.getInviteContractInInviteId(inviteId);
	}

	@Override
	public List<InviteContract> getInviteContractsInStartupsId(String startupsId) {
		// TODO Auto-generated method stub
		return iicd.getInviteContractsInStartupsId(startupsId);
	}

	@Override
	public List<InviteContract> getInviteContractsInInviteUserId(String inviteUserId) {
		// TODO Auto-generated method stub
		return iicd.getInviteContractsInInviteUserId(inviteUserId);
	}

	@Override
	public List<InviteContract> getInviteContractsInStartupsId(String startupsId, String inviteStatus) {
		// TODO Auto-generated method stub
		return iicd.getInviteContractsInStartupsId(startupsId, inviteStatus);
	}

	@Override
	public List<InviteContract> getInviteContractsInInviteUserId(String inviteUserId, String inviteStatus) {
		// TODO Auto-generated method stub
		return iicd.getInviteContractsInInviteUserId(inviteUserId, inviteStatus);
	}

	@Override
	public boolean canInviteContract(String startupsId, String inviteUserId, String inviteStatus) {
		// TODO Auto-generated method stub
		return iicd.canInviteContract(startupsId, inviteUserId, inviteStatus);
	}



}
