package com.chuangyejia.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class User {
	
	private final static String PHOTO_DEFAULT = "/ChuangYeJia/assets/img/defaultImg/head.png";

	private String userId = null;
	private String userNickName = null;//用户昵称
	private String userEmail = null;//用户邮箱
	private String userRealName = null;//用户真实姓名
	private String userPassword = "123456";
	private String userIntroduce = null;
	private String userGender = null;
	private Timestamp userBirthday = null;
	private String userPhoto = "";//用户头像
	private String userRealPhoto = "";//用户照片
	private String userAddress = null;
	private String userIp = null;
	private String userWeChat = null;
	private String userIdCard = null;
	private Timestamp userCreateDate = null;
	private String isVerify = "0";//是否认证
	private String userTel = null;//电话
	
	/**
	 * 获取该用户所创建的所有的创业公司
	 */
	private Set<Startups> allLeaderStartups = new HashSet<Startups>();
	

	/**
	 * 获取该用户参与的所有的创业公司
	 */
	private Set<Startups> allJoinStartups = new HashSet<Startups>();
	
	public User() {}
	
	public User(String userId, String userNickName, String userEmail, String userRealName, String userPassword,
			String userIntroduce, String userGender, Timestamp userBirthday, String userPhoto, String userRealPhoto,
			String userAddress, String userIp, String userWeChat, String userIdCard, Timestamp userCreateDate,
			String isVerify, String userTel) {
		super();
		this.userId = userId;
		this.userNickName = userNickName;
		this.userEmail = userEmail;
		this.userRealName = userRealName;
		this.userPassword = userPassword;
		this.userIntroduce = userIntroduce;
		this.userGender = userGender;
		this.userBirthday = userBirthday;
		this.userPhoto = userPhoto;
		this.userRealPhoto = userRealPhoto;
		this.userAddress = userAddress;
		this.userIp = userIp;
		this.userWeChat = userWeChat;
		this.userIdCard = userIdCard;
		this.userCreateDate = userCreateDate;
		this.isVerify = isVerify;
		this.userTel = userTel;
	}
	
	
	@Id
	@GenericGenerator(name="uuid", strategy="uuid")
	@GeneratedValue(generator="uuid")
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
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
		if(userPhoto == null || userPhoto.trim().hashCode() == 0)
			userPhoto = PHOTO_DEFAULT;
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		if(userPhoto == null || userPhoto.trim().hashCode() == 0)
			userPhoto = PHOTO_DEFAULT;
		this.userPhoto = userPhoto;
	}
	public String getUserRealPhoto() {
		return userRealPhoto;
	}
	public void setUserRealPhoto(String userRealPhoto) {
		this.userRealPhoto = userRealPhoto;
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
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserIp() {
		return userIp;
	}
	public void setUserIp(String userIp) {
		this.userIp = userIp;
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
	
	/**
	 * 这里是一对多双向关联，获取到该用户是leader的所有创业公司
	 * 注意：这里与之对应的是 Startups类中的User(startupsLeader)对象
	 * @return
	 */
	@OneToMany(mappedBy="startupsLeader",cascade={CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH},fetch=FetchType.LAZY)
	public Set<Startups> getAllLeaderStartups() {
		return allLeaderStartups;
	}
	public void setAllLeaderStartups(Set<Startups> allLeaderStartups) {
		this.allLeaderStartups = allLeaderStartups;
	}

	/**
	 * 多对多双向关联，可以获得到该用户参与的所有的创业公司
	 * 注意：不包含他是leader的身份的创业公司，仅仅是以普通成员的身份参与其中的创业公司
	 * @return
	 */
	@ManyToMany(mappedBy="copartner",cascade={CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH},fetch=FetchType.LAZY)
	public Set<Startups> getAllJoinStartups() {
		return allJoinStartups;
	}
	public void setAllJoinStartups(Set<Startups> allJoinStartups) {
		this.allJoinStartups = allJoinStartups;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "User信息:[userId:" + userId
				+ ", userNickName:" + userNickName
				+ ", userEmail:" + userEmail
				+ ", userRealName:" + userRealName
				+ ", userPassword:" + userPassword
				+ ", userIntroduce:" + userIntroduce
				+ ", userGender:" + userGender
				+ ", userBirthday:" + userBirthday
				+ ", userPhoto:" + userPhoto
				+ ", userRealPhoto:" + userRealPhoto
				+ ", userAddress:" + userAddress
				+ ", userIp:" + userIp
				+ ", userWeChat:" + userWeChat
				+ ", userIdCard:" + userIdCard
				+ ", userCreateDate:" + userCreateDate
				+ ", isVerify:" + isVerify
				+ ", userTel:" + userTel
				+ "]";
	}

}
