package com.chuangyejia.action;

import java.io.ByteArrayInputStream;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.dto.UserDTO;
import com.chuangyejia.tools.IdentifyCode;
import com.opensymphony.xwork2.ActionSupport;

public class UserSignInAction extends ActionSupport {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private UserDTO ud;
	private ByteArrayInputStream imageStream;  
	public UserDTO getUd() {
		return ud;
	}
	public void setUd(UserDTO ud) {
		this.ud = ud;
	}
	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}
	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}
	
	/**
	 * 用来生成验证码的
	 * @return "identifyCode"
	 */
	public String identifyCode() {
		IdentifyCode ic = new IdentifyCode();
		imageStream = ic.createCode();
		Integer code = ic.getResult();
		
		ServletActionContext.getRequest().getSession().setAttribute("code", code);
		return "identifyCode";
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println(ud.getEmail());
		System.out.println(ud.getPassword());
		System.out.println(ud.getIdentifyCode());
		System.out.println(ServletActionContext.getRequest().getSession().getAttribute("code").getClass().getName());
		//System.out.println(Integer.valueOf(ud.getIdentifyCode()) == (Integer)ServletActionContext.getRequest().getSession().getAttribute("code"));
		
		return super.execute();
	}

}
