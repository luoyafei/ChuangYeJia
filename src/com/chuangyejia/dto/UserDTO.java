package com.chuangyejia.dto;

public class UserDTO {
	
	private boolean isLogin;//是登录还是注册操作
	private String nickname;//昵称
	private String email;//邮箱
	private String password;//密码
	private String validatePassword;//重新输入密码
	private String identifyCode;//验证码
	private String errorInfo;//出错信息
	
	public boolean getIsLogin() {
		return isLogin;
	}
	public void setIsLogin(boolean isLogin) {
		this.isLogin = isLogin;
	}
	public String getErrorInfo() {
		return errorInfo;
	}
	public void setErrorInfo(String errorInfo) {
		this.errorInfo = errorInfo;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getValidatePassword() {
		return validatePassword;
	}
	public void setValidatePassword(String validatePassword) {
		this.validatePassword = validatePassword;
	}
	public String getIdentifyCode() {
		return identifyCode;
	}
	public void setIdentifyCode(String identifyCode) {
		this.identifyCode = identifyCode;
	}
	
	public boolean simpleCheckData() {
		
		if(isLogin) {
			if(email.trim().hashCode() != 0 && password.trim().hashCode() != 0)
				return true;
			else
				return false;
		} else {
			if(nickname.trim().hashCode() != 0 && email.trim().hashCode() != 0 && password.trim().hashCode() != 0 && validatePassword.trim().hashCode() != 0)
				return true;
			else
				return false;
		}
	}
}
