package com.chuangyejia.factory;

import com.chuangyejia.dao.IStartupsDao;
import com.chuangyejia.dao.IUserDao;
import com.chuangyejia.dao.impl.StartupsDaoImpl;
import com.chuangyejia.dao.impl.UserDaoImpl;

public class DaoFactory {

	public static IUserDao createUserDao() {
		return new UserDaoImpl();
	}
	
	public static IStartupsDao createServiceDao() {
		return new StartupsDaoImpl();
	}
	
}
