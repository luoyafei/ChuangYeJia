package com.chuangyejia.action;

import java.io.ByteArrayInputStream;

import javax.xml.crypto.dsig.XMLSignatureFactory;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

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
	private static final String LOGIN = "login";//验证登录失败后，返回登录页面
	private static final String REGISTER = "register";//验证注册失败后，返回注册页面
	private static final String BACK = "back";//从哪个登录登录的，成功后就返回那个页面
	
	
	
	private UserSignDTO ud;
	private ByteArrayInputStream imageStream;//输出的图片流
	private String backUrl;//从哪里进行登陆时url
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
	public String getBackUrl() {
		return backUrl;
	}
	public void setBackUrl(String backUrl) {
		if(backUrl.trim().hashCode() == 0)
			this.backUrl = "/index.jsp";
		else {
			if(backUrl.contains("/ChuangYeJia") && backUrl.startsWith("/ChuangYeJia")) {
				this.backUrl = backUrl.substring(12);
			} else {
				this.backUrl = "/index.jsp";
			}
		}
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
		
		String code = String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("code"));//先将session中的验证码结果取出
		if(ud.getIdentifyCode().equals(code)) {//如果判断相等，则继续执行
			ud.setIsLogin(false);
			if(ud.checkDataDispatchor()) {
				IUserService ius = ServiceFactory.createUserService();
				boolean emailIsExisted = ius.checkEmail(ud.getEmail());//判断数据库中是否存在该email
				if(!emailIsExisted) {
					User user = ud.toUser();
					if(ius.saveUser(user))  {//将User对象存入数据库中。
						ServletActionContext.getRequest().getSession().setAttribute("user", user);//将插入成功的User对象放入Session中
						return BACK;
					}
				}
			}
		}
		return REGISTER;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
System.out.println("backUrl :" + backUrl);
		
		String code = String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("code"));//先将session中的验证码结果取出
		if(ud.getIdentifyCode().equals(code)) {//如果判断相等，则继续执行
			ud.setIsLogin(true);
			if(ud.checkDataDispatchor()) {
				IUserService ius = ServiceFactory.createUserService();
				
				User user = ius.checkEmailAndPassword(ud.toUser());//判断数据库中是否存在该email和password
				if(user != null) {
//System.out.println(user.getUserNickName());
					ServletActionContext.getRequest().getSession().setAttribute("user", user);//将User对象放入Session中
					return BACK;
				} else {
					this.addFieldError("error", "邮箱或登录密码错误！");
				}
			} else
				this.addFieldError("error", "邮箱格式错误！");
		} else
			this.addFieldError("error", "验证码错误！");
		
		return LOGIN;
	}
}