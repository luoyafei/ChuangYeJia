package com.chuangyejia.factory;

import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.service.impl.StartupsServiceImpl;
import com.chuangyejia.service.impl.UserServiceImpl;

public class ServiceFactory {

	public static IUserService createUserService() {
		return new UserServiceImpl();
	}
	
	public static IStartupsService createStartupsService() {
		return new StartupsServiceImpl();
	}
	
}
