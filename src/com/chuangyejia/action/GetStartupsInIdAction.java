package com.chuangyejia.action;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.tools.StartupsTempShow;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 提供根据用户Id，获取整个Startups对象，放入request中
 * @author Diamond
 */
public class GetStartupsInIdAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String item;
	
	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(item != null && item.trim().hashCode() != 0) {
			
			IStartupsService iss = ServiceFactory.createStartupsService();
			StartupsTempShow sts = iss.getStartupsTempShowInId(item);
			if(sts != null) {
				ServletActionContext.getRequest().setAttribute("sts", sts);
				return SUCCESS;
			} else 
				return NONE;
			
		} else {
			return NONE;
		}
	}

}
