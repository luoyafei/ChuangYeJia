package com.chuangyejia.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GenericGenerator;

/**
 * 创业公司，实体类
 * @author Diamond
 */
@Entity
public class Startups {

	private String startupsId = null;
	private String startupsName = null;//公司名称
	private Timestamp startupsCreateDate = null;//创建时间
	private String startupsBrief = null;//公司简介
	private String startupsDetail = null;//公司详细内容
	private int startupsServiceType = 0;
	//服务类型   (移动互联网，电子商务，文化艺术，教育体育，汽车，旅游户外，房产，营销广告，硬件，工具软件，企业服务，搜索安全，医疗健康，媒体资讯，生活消费，其他)
	private String startupsAddress = null;//公司归属地
	private String startupsAccount = null;//公司账户
	private String startupsPassword = null;//公司密码
	private int startupsCopartnerRequire = 0;
	//合伙人需求   (资金，技术，运营)
	private String startupsOperationStage = null;//运营阶段
	private String startupsCover = null;//公司封面
	private String startupsVideo = null;//公司视频
	private String startupsPhoto1 = null;//公司照片1
	private String startupsPhoto2 = null;//公司照片2
	private String startupsPhoto3 = null;//公司照片3

	private User startupsLeader = null;//公司leader对象
	
	/*
	 * 获取在该创业公司下的所有成员
	 */
	private Set<User> copartner = new HashSet<User>();

	
	@Id
	@GenericGenerator(name="uuid", strategy="uuid")
	@GeneratedValue(generator="uuid")
	public String getStartupsId() {
		return startupsId;
	}

	public void setStartupsId(String startupsId) {
		this.startupsId = startupsId;
	}

	public String getStartupsName() {
		return startupsName;
	}

	public void setStartupsName(String startupsName) {
		this.startupsName = startupsName;
	}

	public Timestamp getStartupsCreateDate() {
		return startupsCreateDate;
	}

	public void setStartupsCreateDate(Timestamp startupsCreateDate) {
		this.startupsCreateDate = startupsCreateDate;
	}

	public String getStartupsBrief() {
		return startupsBrief;
	}

	public void setStartupsBrief(String startupsBrief) {
		this.startupsBrief = startupsBrief;
	}

	public String getStartupsDetail() {
		return startupsDetail;
	}

	public void setStartupsDetail(String startupsDetail) {
		this.startupsDetail = startupsDetail;
	}

	
	public int getStartupsServiceType() {
		return startupsServiceType;
	}

	public void setStartupsServiceType(int startupsServiceType) {
		this.startupsServiceType = startupsServiceType;
	}

	public int getStartupsCopartnerRequire() {
		return startupsCopartnerRequire;
	}

	public void setStartupsCopartnerRequire(int startupsCopartnerRequire) {
		this.startupsCopartnerRequire = startupsCopartnerRequire;
	}

	public String getStartupsAddress() {
		return startupsAddress;
	}

	public void setStartupsAddress(String startupsAddress) {
		this.startupsAddress = startupsAddress;
	}

	public String getStartupsAccount() {
		return startupsAccount;
	}

	public void setStartupsAccount(String startupsAccount) {
		this.startupsAccount = startupsAccount;
	}

	public String getStartupsPassword() {
		return startupsPassword;
	}

	public void setStartupsPassword(String startupsPassword) {
		this.startupsPassword = startupsPassword;
	}

	public String getStartupsOperationStage() {
		return startupsOperationStage;
	}

	public void setStartupsOperationStage(String startupsOperationStage) {
		this.startupsOperationStage = startupsOperationStage;
	}

	public String getStartupsCover() {
		if(userPhoto == null || userPhoto.trim().hashCode() == 0)
			userPhoto = "/ChuangYeJia/assets/img/defaultImg/startupsCover.png";
		return startupsCover;
	}

	public void setStartupsCover(String startupsCover) {
		this.startupsCover = startupsCover;
	}

	public String getStartupsVideo() {
		return startupsVideo;
	}

	public void setStartupsVideo(String startupsVideo) {
		this.startupsVideo = startupsVideo;
	}

	public String getStartupsPhoto1() {
		return startupsPhoto1;
	}

	public void setStartupsPhoto1(String startupsPhoto1) {
		this.startupsPhoto1 = startupsPhoto1;
	}

	public String getStartupsPhoto2() {
		return startupsPhoto2;
	}

	public void setStartupsPhoto2(String startupsPhoto2) {
		this.startupsPhoto2 = startupsPhoto2;
	}

	public String getStartupsPhoto3() {
		return startupsPhoto3;
	}

	public void setStartupsPhoto3(String startupsPhoto3) {
		this.startupsPhoto3 = startupsPhoto3;
	}

	@ManyToOne(cascade={CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH},fetch=FetchType.EAGER)
	@JoinColumn(name="startupsLeaderId")
	public User getStartupsLeader() {
		return startupsLeader;
	}

	public void setStartupsLeader(User startupsLeader) {
		this.startupsLeader = startupsLeader;
	}

	@ManyToMany(cascade={CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH},fetch=FetchType.LAZY)
	@JoinTable(name="startups_user",
				joinColumns={@JoinColumn(name="startupsId", referencedColumnName="startupsId")},
				inverseJoinColumns={@JoinColumn(name="userId", referencedColumnName="userId")}
			)
	public Set<User> getCopartner() {
		return copartner;
	}
	
	public void setCopartner(Set<User> copartner) {
		this.copartner = copartner;
	}
	
	
}
