package com.chuangyejia.action;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.UserTempShow;
import com.opensymphony.xwork2.ActionSupport;

public class GetUserInIdAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String mark;

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(mark != null && mark.trim().hashCode() != 0) {
			
			IUserService ius = ServiceFactory.createUserService();
			UserTempShow uts = ius.getUserTempShowInId(mark);
			
			if(uts != null) {
				ServletActionContext.getRequest().setAttribute("uts", uts);
				return SUCCESS;
			} else 
				return NONE;
			
		} else {
			return NONE;
		}
	}

}
