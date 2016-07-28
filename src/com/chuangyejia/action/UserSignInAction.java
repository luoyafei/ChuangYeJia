package com.chuangyejia.action;

import java.io.ByteArrayInputStream;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.User;
import com.chuangyejia.dto.UserSignDTO;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.IdentifyCode;
import com.opensymphony.xwork2.ActionSupport;

public class UserSignInAction extends ActionSupport {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private UserSignDTO ud;
	private ByteArrayInputStream imageStream;  
	public UserSignDTO getUd() {
		return ud;
	}
	public void setUd(UserSignDTO ud) {
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
		
		//将验证码的结果存入session
		ServletActionContext.getRequest().getSession().setAttribute("code", code);
		return "identifyCode";
	}
	
	public String register() {
		
		System.out.println("register() executed!"); 
		
		String code = String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("code"));//先将session中的验证码结果取出
		if(ud.getIdentifyCode().equals(code)) {//如果判断相等，则继续执行
//System.out.println("ud.getIdentifyCode().equals(code)" + ":" + ud.getIdentifyCode().equals(code));
			ud.setIsLogin(false);
//System.out.println("ud.checkDataDispatchor()" + ":" + ud.checkDataDispatchor());

			if(ud.checkDataDispatchor()) {
//System.out.println("1111111111111111");
				IUserService ius = ServiceFactory.createUserService();
				boolean emailIsExisted = ius.checkEmail(ud.getEmail());//判断数据库中是否存在该email
				if(!emailIsExisted) {
//System.out.println("!emailIsExisted" + ":" + !emailIsExisted);
					User user = ud.toUser();
					if(ius.saveUser(user))  {//将User对象存入数据库中。
//System.out.println("u.getUserId : " + u.getUserId());
						ServletActionContext.getRequest().getSession().setAttribute("user", user);//将插入成功的User对象放入Session中
						return SUCCESS;
					} else
						return INPUT;
				} else {
					return INPUT;
				}
			} else {
				return INPUT;
			}
		} else {
			return INPUT;
		}
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		
		return super.execute();
	}

}
