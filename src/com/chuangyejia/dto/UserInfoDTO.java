package com.chuangyejia.dto;

import com.chuangyejia.jsonbean.UserModifyAjaxReturnBean;

public class UserInfoDTO {

	private boolean isModifyPassword;
	private String nickname;
	private String address;
	private String profile;
	private String password;
	private String newPassword;
	
	public boolean isModifyPassword() {
		return isModifyPassword;
	}
	public void setModifyPassword(boolean isModifyPassword) {
		this.isModifyPassword = isModifyPassword;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	/**
	 * 进行简单的数据校验
	 * @return boolean
	 */
	public UserModifyAjaxReturnBean checkData() {
		// TODO Auto-generated method stub
		UserModifyAjaxReturnBean error = new UserModifyAjaxReturnBean();
		if(isModifyPassword) {
			if(password.trim().hashCode() == 0 || password.trim().length() < 6) {
				error.setPassword("用户原始密码输入错误！");
				error.setSuccess(false);
			} else if(newPassword.trim().hashCode() == 0 || newPassword.trim().length() < 6) {
				error.setNewPassword("用户新密码输入错误！");
				error.setSuccess(false);
			} else
				error.setSuccess(true);
		} else {
			if(nickname.trim().hashCode() == 0 || nickname.trim().length() < 2 || nickname.trim().length() > 16) {
				error.setNickname("用户昵称长度必须在2-16个字之间！");
				error.setSuccess(false);
			} else if(address.trim().hashCode() == 0 || address.trim().length() > 16) {
				error.setAddress("用户地址不能为空，且不能超过16个字！");
				error.setSuccess(false);
			} else if(profile.trim().hashCode() == 0) {
				error.setProfile("用户简介不能为空！");
				error.setSuccess(false);
			} else if(profile.trim().length() > 255) {
				error.setProfile("用户简介字数不能超过255个！！");
				error.setSuccess(false);
			} else
				error.setSuccess(true);
		}
		return error;
	}
	
	
}
