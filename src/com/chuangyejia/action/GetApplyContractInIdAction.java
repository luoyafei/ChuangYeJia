package com.chuangyejia.action;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.ApplyContract;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IApplyContractService;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.StartupsTempShow;
import com.chuangyejia.tools.UserTempShow;
import com.opensymphony.xwork2.ActionSupport;

public class GetApplyContractInIdAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String applyId;
	
	public String getApplyId() {
		return applyId;
	}

	public void setApplyId(String applyId) {
		this.applyId = applyId;
	}


	public String JustDoIt() {
		if(ServletActionContext.getRequest().getSession().getAttribute("user") != null && applyId != null && applyId.trim().hashCode() != 0) {
			
			IApplyContractService iac = ServiceFactory.createApplyContractService();
			
			ApplyContract applyContract = iac.getApplyContractInApplyId(applyId);
			
			if(applyContract == null) 
				return NONE;
			else {
				
				String startupsId = applyContract.getApplyStartupsId();
				String userId = applyContract.getApplyOrganiserId();
				IStartupsService iss = ServiceFactory.createStartupsService();
				IUserService ius = ServiceFactory.createUserService();

				StartupsTempShow applyStartups = iss.getStartupsTempShowInId(startupsId);
				UserTempShow applyOrganiser = ius.getUserTempShowInId(userId);
				
				ServletActionContext.getRequest().setAttribute("applyContract", applyContract);
				ServletActionContext.getRequest().setAttribute("applyStartups", applyStartups);
				ServletActionContext.getRequest().setAttribute("applyOrganiser", applyOrganiser);
				return SUCCESS;
			}
			
		} else {
			return NONE;
		}
	}
	
	
}
