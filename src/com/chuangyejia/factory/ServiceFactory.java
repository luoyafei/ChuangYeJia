package com.chuangyejia.factory;

import com.chuangyejia.service.IUserService;
import com.chuangyejia.service.impl.UserServiceImpl;

public class ServiceFactory {

	public static IUserService createUserService() {
		return new UserServiceImpl();
	}
	
}
