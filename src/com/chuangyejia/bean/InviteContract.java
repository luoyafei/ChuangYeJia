package com.chuangyejia.bean;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

/**
 * 此为公司邀请合伙人的邀请合同实体类
 * @author Diamond
 */
@Entity
public class InviteContract {

	private String inviteId;
	private String inviteOrganiserStartupsId;//邀请发起人公司Id
	private String inviteTitle;//邀请标题
	private String inviteContent;//邀请内容
	private String inviteUserId;//邀请的用户Id
	private Timestamp createDate;//创建时间
	private Timestamp lastModifyDate;//最好修改时间
	private String inviteStatus;//邀请状态
	
	@Id
	@GenericGenerator(name="uuid", strategy="uuid")
	@GeneratedValue(generator="uuid")
	public String getInviteId() {
		return inviteId;
	}
	public void setInviteId(String inviteId) {
		this.inviteId = inviteId;
	}
	public String getInviteOrganiserStartupsId() {
		return inviteOrganiserStartupsId;
	}
	public void setInviteOrganiserStartupsId(String inviteOrganiserStartupsId) {
		this.inviteOrganiserStartupsId = inviteOrganiserStartupsId;
	}
	public String getInviteTitle() {
		return inviteTitle;
	}
	public void setInviteTitle(String inviteTitle) {
		this.inviteTitle = inviteTitle;
	}
	public String getInviteContent() {
		return inviteContent;
	}
	public void setInviteContent(String inviteContent) {
		this.inviteContent = inviteContent;
	}
	public String getInviteUserId() {
		return inviteUserId;
	}
	public void setInviteUserId(String inviteUserId) {
		this.inviteUserId = inviteUserId;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public Timestamp getLastModifyDate() {
		return lastModifyDate;
	}
	public void setLastModifyDate(Timestamp lastModifyDate) {
		this.lastModifyDate = lastModifyDate;
	}
	public String getInviteStatus() {
		return inviteStatus;
	}
	public void setInviteStatus(String inviteStatus) {
		this.inviteStatus = inviteStatus;
	}
	
	
}
