package com.chuangyejia.service.impl;

import java.util.List;

import com.chuangyejia.bean.User;
import com.chuangyejia.dao.IUserDao;
import com.chuangyejia.factory.DaoFactory;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.UserTempShow;

public class UserServiceImpl implements IUserService {

	private IUserDao ud = null;
	
	public UserServiceImpl() {
		ud = DaoFactory.createUserDao();
	}
	
	@Override
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		return ud.saveUser(user);
	}

	@Override
	public boolean deleteUser(String userId) {
		// TODO Auto-generated method stub
		return ud.deleteUser(userId);
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return ud.updateUser(user);
	}

	@Override
	public int getAllUsersCount() {
		// TODO Auto-generated method stub
		return ud.getAllUsersCount();
	}

	@Override
	public List<User> getUsers(Integer start, Integer length) {
		// TODO Auto-generated method stub
		return ud.getUsers(start, length);
	}

	@Override
	public User getUserInId(String userId) {
		// TODO Auto-generated method stub
		return ud.getUserInId(userId);
	}
	
	

	@Override
	public UserTempShow getUserTempShowInId(String userId) {
		// TODO Auto-generated method stub
		return ud.getUserTempShowInId(userId);
	}

	@Override
	public User getUserInEmail(String userEmail) {
		// TODO Auto-generated method stub
		return ud.getUserInEmail(userEmail);
	}

	@Override
	public User getUserInIdCard(String idCard) {
		// TODO Auto-generated method stub
		return ud.getUserInIdCard(idCard);
	}

	@Override
	public User getUserInWeChat(String weChat) {
		// TODO Auto-generated method stub
		return ud.getUserInWeChat(weChat);
	}

	@Override
	public User getUserInTel(String tel) {
		// TODO Auto-generated method stub
		return ud.getUserInTel(tel);
	}

	@Override
	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		return ud.checkEmail(email);
	}

	@Override
	public User checkEmailAndPassword(User user) {
		// TODO Auto-generated method stub
		return ud.checkEmailAndPassword(user);
	}

}
