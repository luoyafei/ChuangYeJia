package com.chuangyejia.service.impl;

import java.sql.Timestamp;
import java.util.List;

import com.chuangyejia.bean.ApplyContract;
import com.chuangyejia.dao.IApplyContractDao;
import com.chuangyejia.factory.DaoFactory;
import com.chuangyejia.service.IApplyContractService;

public class ApplyContractServiceImpl implements IApplyContractService {

	private IApplyContractDao iacd = null;
	
	public ApplyContractServiceImpl() {
		iacd = DaoFactory.createApplyContractDao();
	}
	
	
	@Override
	public boolean saveApplyContract(ApplyContract ac) {
		// TODO Auto-generated method stub
		return iacd.saveApplyContract(ac);
	}

	@Override
	public boolean updateApplyContract(ApplyContract ac) {
		// TODO Auto-generated method stub
		return iacd.updateApplyContract(ac);
	}

	@Override
	public boolean deleteApplyContract(ApplyContract ac) {
		// TODO Auto-generated method stub
		return iacd.deleteApplyContract(ac);
	}

	@Override
	public ApplyContract getApplyContractInApplyId(String applyId) {
		// TODO Auto-generated method stub
		return iacd.getApplyContractInApplyId(applyId);
	}

	@Override
	public List<ApplyContract> getApplyContractInUserId(String userId) {
		// TODO Auto-generated method stub
		return iacd.getApplyContractInUserId(userId);
	}

	@Override
	public List<ApplyContract> getApplyContractInUserId(String userId, String status) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<ApplyContract> getApplyContractInStartupsId(String startupsId, String status) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<ApplyContract> getApplyContractInStartupsId(String startupsId) {
		// TODO Auto-generated method stub
		return iacd.getApplyContractInStartupsId(startupsId);
	}

	@Override
	public List<ApplyContract> getApplyContractInStatus(String status) {
		// TODO Auto-generated method stub
		return iacd.getApplyContractInStatus(status);
	}

	@Override
	public List<ApplyContract> getApplyContractInCreateDate(Timestamp createDate) {
		// TODO Auto-generated method stub
		return iacd.getApplyContractInCreateDate(createDate);
	}


	@Override
	public boolean canApplyContract(String userId, String startupsId, String stataus) {
		// TODO Auto-generated method stub
		
		
		return iacd.canApplyContract(userId, startupsId, stataus);
	}

}
