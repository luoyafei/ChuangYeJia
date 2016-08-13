package com.chuangyejia.action;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.Product;
import com.chuangyejia.factory.ServiceFactory;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 提供根据产品Id，获取整个Product对象，放入request中
 * @author Diamond
 */
public class GetProductInIdAction extends ActionSupport {

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
			
			Product product = ServiceFactory.createProductService().getProductInId(item);
			if(product != null) {
				ServletActionContext.getRequest().setAttribute("product", product);
				return SUCCESS;
			} else 
				return NONE;
			
		} else {
			return NONE;
		}
	}

}
