package com.chuangyejia.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.ApplyContract;
import com.chuangyejia.bean.Startups;
import com.chuangyejia.bean.User;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IApplyContractService;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.tools.StartupsTempShow;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionSupport;

public class OperateApplyContractAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ApplyContract ac;
	
	private String applyId;
	
	public String getApplyId() {
		return applyId;
	}

	public void setApplyId(String applyId) {
		this.applyId = applyId;
	}

	/**
	 * 在操纵之前，先得确保得到的申请合同中的公司，必须是操作者所创建的！
	 * @return
	 */
	private boolean checkApplyIdCanOperate() {
		
		User user = (User)ServletActionContext.getRequest().getSession().getAttribute("user");
		if(user == null) {
			return false;
		}
		IApplyContractService ics = ServiceFactory.createApplyContractService();
		ac = ics.getApplyContractInApplyId(applyId);
		IStartupsService iss = ServiceFactory.createStartupsService();
		StartupsTempShow sts = iss.getStartupsTempShowInId(ac.getApplyStartupsId());
		if(sts == null || !user.getUserId().equals(sts.getStartupsLeader().getUserId())) {
			return false;
		}
		return true;
	}
	
	/**
	 * 接收合同的操作
	 */
	public void receiveUser() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch(IOException e) {
System.out.println("OperateApplyContractAction.java处理用户申请，接受的ajaxAction出错！获取输出管道出错！");
			e.printStackTrace();
		}
		
		JsonObject jo = new JsonObject();
		boolean operateSuccess = false;
		
		if(checkApplyIdCanOperate()) {
			IApplyContractService iacs = ServiceFactory.createApplyContractService();
			ac.setApplyStatus("已接受");
			if(iacs.updateApplyContract(ac)) {
				/**
				 * 如果更新申请合同成功后，就进行将该合伙人加入公司！
				 */
				Startups startups = ServiceFactory.createStartupsService().getStartupsInId(ac.getApplyStartupsId());
				startups.getCopartner().add(ServiceFactory.createUserService().getUserInId(ac.getApplyOrganiserId()));
				
				/**
				 * 如何加入公司成功，则success设为true
				 * 反之，将申请合同打回原形！
				 */
				if(ServiceFactory.createStartupsService().updateStartups(startups)) {
					operateSuccess = true;
				} else {
					ac.setApplyStatus("正在审核");
					iacs.updateApplyContract(ac);
				}
			}
		}
		jo.addProperty("operateSuccess", operateSuccess);
		
		out.print(jo.toString());
		out.flush();
		out.close();
	}
	
	/**
	 * 拒绝合同的操作
	 */
	public void refuseUser() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch(IOException e) {
System.out.println("OperateApplyContractAction.java处理用户拒绝，拒绝的ajaxAction出错！获取输出管道出错！");
			e.printStackTrace();
		}
		
		JsonObject jo = new JsonObject();
		boolean operateSuccess = false;
			
		if(checkApplyIdCanOperate()) {
			IApplyContractService iacs = ServiceFactory.createApplyContractService();
			ac.setApplyStatus("已拒绝");
			if(iacs.updateApplyContract(ac)) {
				operateSuccess = true;
			}
		}
		jo.addProperty("operateSuccess", operateSuccess);
		
		out.print(jo.toString());
		out.flush();
		out.close();
	}
	/**
	 * 我创建的申请合同，取消合同的操作
	 */
	public void quitApply() {
		ac = ServiceFactory.createApplyContractService().getApplyContractInApplyId(applyId);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json; charset=utf-8");
		User user = (User)ServletActionContext.getRequest().getSession().getAttribute("user");
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch(IOException e) {
System.out.println("OperateApplyContractAction.java处理用户拒绝，拒绝的ajaxAction出错！获取输出管道出错！");
			e.printStackTrace();
		}
		
		JsonObject jo = new JsonObject();
		boolean operateSuccess = false;
		
		if(ac.getApplyOrganiserId().equals(user.getUserId())) {
			IApplyContractService iacs = ServiceFactory.createApplyContractService();
			if(iacs.deleteApplyContract(ac)) {
				operateSuccess = true;
			}
		}		
			
		jo.addProperty("operateSuccess", operateSuccess);
		
		out.print(jo.toString());
		out.flush();
		out.close();
		
	}
}
