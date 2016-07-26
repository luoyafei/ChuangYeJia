package com.chuangyejia.action;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.dto.UserDTO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserSianInAction extends ActionSupport {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	UserDTO ud = new UserDTO();
	
	public UserDTO getUd() {
		return ud;
	}

	public void setUd(UserDTO ud) {
		this.ud = ud;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		ActionContext ac = ServletActionContext.getContext();
		
		//HttpSession session = 
		
		System.out.println(ud.getUsername());
		System.out.println(ud.getPassword());
		System.out.println(ud.getIdentifyCode());
		System.out.println(ac.getSession().get("code"));
		
		return super.execute();
	}

}
