package com.chuangyejia.factory;

import com.chuangyejia.dao.IUserDao;
import com.chuangyejia.dao.impl.UserDaoImpl;

public class DaoFactory {

	public static IUserDao createUserDao() {
		return new UserDaoImpl();
	}
	
}
