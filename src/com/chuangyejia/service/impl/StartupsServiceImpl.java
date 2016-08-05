package com.chuangyejia.service.impl;

import java.util.List;

import com.chuangyejia.bean.Startups;
import com.chuangyejia.dao.IStartupsDao;
import com.chuangyejia.factory.DaoFactory;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.tools.StartupsTempShow;

public class StartupsServiceImpl implements IStartupsService {

	
	private IStartupsDao sd = null;
	
	public StartupsServiceImpl() {
		sd = DaoFactory.createServiceDao();
	}

	@Override
	public boolean saveStartups(Startups startups) {
		// TODO Auto-generated method stub
		return sd.saveStartups(startups);
	}

	@Override
	public boolean updateStartups(Startups startups) {
		// TODO Auto-generated method stub
		return sd.updateStartups(startups);
	}

	@Override
	public boolean deleteStartups(Startups startups) {
		// TODO Auto-generated method stub
		return sd.deleteStartups(startups);
	}

	@Override
	public int getAllStartupsCount() {
		// TODO Auto-generated method stub
		return sd.getAllStartupsCount();
	}

	@Override
	public List<StartupsTempShow> getStartupTempShows(Integer start, Integer length, String sort) {
		// TODO Auto-generated method stub
		return sd.getStartupTempShows(start, length, sort);
	}

	@Override
	public Startups getStartupsInId(String startupsId) {
		// TODO Auto-generated method stub
		return sd.getStartupsInId(startupsId);
	}

	@Override
	public Startups getStartupsInLeaderId(String leaderId) {
		// TODO Auto-generated method stub
		return sd.getStartupsInLeaderId(leaderId);
	}

	@Override
	public boolean isNameRepeat(String startupsName) {
		// TODO Auto-generated method stub
		return sd.isNameRepeat(startupsName);
	}

	@Override
	public StartupsTempShow getStartupsTempShowInId(String startupsId) {
		// TODO Auto-generated method stub
		return sd.getStartupsTempShowInId(startupsId);
	}

	

}