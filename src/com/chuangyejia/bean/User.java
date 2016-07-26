package com.chuangyejia.bean;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class User {

	private int userId;
	private String userNickName = "";//用户昵称
	private String userEmail = "";//用户邮箱
	private String userRealName = "";//用户真实姓名
	private String userPassword = "";
	private String userIntroduce = "";
	private String userGender = "";
	private Timestamp userBirthday = null;
	private String userPhoto = "";//用户头像
	private String userRealPhoto = "";//用户照片
	private String userProvince = "";
	private String userCity = "";
	private String userWeChat = "";
	private String userIdCard = "";
	private Timestamp userCreateDate = null;
	private String isVerify = "";//是否认证
	private String userTel = "";//电话
	
	@Id
	@GeneratedValue
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserRealName() {
		return userRealName;
	}
	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserIntroduce() {
		return userIntroduce;
	}
	public void setUserIntroduce(String userIntroduce) {
		this.userIntroduce = userIntroduce;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public Timestamp getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(Timestamp userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public String getUserRealPhoto() {
		return userRealPhoto;
	}
	public void setUserRealPhoto(String userRealPhoto) {
		this.userRealPhoto = userRealPhoto;
	}
	public String getUserProvince() {
		return userProvince;
	}
	public void setUserProvince(String userProvince) {
		this.userProvince = userProvince;
	}
	public String getUserCity() {
		return userCity;
	}
	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserWeChat() {
		return userWeChat;
	}
	public void setUserWeChat(String userWeChat) {
		this.userWeChat = userWeChat;
	}
	public String getUserIdCard() {
		return userIdCard;
	}
	public void setUserIdCard(String userIdCard) {
		this.userIdCard = userIdCard;
	}
	
	/**
	 * 构建一个可以直接获取String类型的日期
	 * @return String
	 */
	@Transient
	public String getUserCreateDateStringTime() {
		if(userCreateDate == null)
			userCreateDate = new Timestamp(System.currentTimeMillis());
		return userCreateDate.toString();
	}
	public Timestamp getUserCreateDate() {
		getUserCreateDateStringTime();//保证其在hibernate使用时，调用。
		return userCreateDate;
	}
	public void setUserCreateDate(Timestamp userCreateDate) {
		this.userCreateDate = userCreateDate;
	}
	public String getIsVerify() {
		return isVerify;
	}
	public void setIsVerify(String isVerify) {
		this.isVerify = isVerify;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
}
