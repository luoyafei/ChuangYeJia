package com.chuangyejia.service;

import java.util.List;

import com.chuangyejia.bean.User;
/**
 * 定义用户服务类的接口
 * @author Diamond
 */
public interface IUserService {

	/**
	 * 存储User对象
	 * @param user
	 * @return boolean
	 */
	public boolean saveUser(User user);
	/**
	 * 根据userId 删除User对象
	 * @param userId
	 * @return boolean
	 */
	public boolean deleteUser(String userId);
	/**
	 * 更新User对象
	 * @param user
	 * @return boolean
	 */
	public boolean updateUser(User user);
	/**
	 * 获取用户的所有数量
	 * @return int
	 */
	public int getAllUsersCount();
	/**
	 * 在指定位置，获取指定数量的用户
	 * @param start
	 * @param length
	 * @return List<User>
	 */
	public List<User> getUsers(Integer start, Integer length);
	/**
	 * 通过userId 获取User对象
	 * @param userId
	 * @return User
	 */
	public User getUserInId(String userId);
	/**
	 * 通过userEmail(邮箱) 获取User对象
	 * @param userEmail
	 * @return User
	 */
	public User getUserInEmail(String userEmail);
	/**
	 * 通过idCard(身份证) 获取User对象
	 * @param idCard
	 * @return User
	 */
	public User getUserInIdCard(String idCard);
	/**
	 * 通过weChat(微信) 获取User对象
	 * @param weChat
	 * @return User
	 */
	public User getUserInWeChat(String weChat);
	/**
	 * 通过tel(电话) 获取User对象
	 * @param tel
	 * @return User
	 */
	public User getUserInTel(String tel);
	/**
	 * 判断email是否中数据库中存在,若存在返回true，反之返回false
	 * @param email
	 * @return boolean
	 */
	public boolean checkEmail(String email);
	/**
	 * 在登录时检测email和password是否正确
	 * @param user.getUserEmail user.getUserPassword
	 * @return User
	 */
	public User checkEmailAndPassword(User user);
}
