package com.chuangyejia.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ValidateAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String email;
	private String password;
	private String identifyCode;
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
	public String getIdentifyCode() {
		return identifyCode;
	}
	public void setIdentifyCode(String identifyCode) {
		this.identifyCode = identifyCode;
	}
	
	public void checkEmail() {
		boolean flag = false;
		
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			System.out.println("异步验证邮箱时，获取输出管道出错！");
			e.printStackTrace();
		}
		
		/**
		 * 检测数据库中是否存在该email
		 * true 存在，
		 * false 不存在
		 */
		flag = ServiceFactory.createUserService().checkEmail(email);
		
		out.print(flag);
		out.flush();
		out.close();
	}
	
	public void checkEandP() {
		
	}
	
	public void checkIdentifyCode() {
		
	}
	
}
