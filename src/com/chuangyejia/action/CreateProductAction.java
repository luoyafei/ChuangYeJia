package com.chuangyejia.action;


import java.io.File;
import java.sql.Timestamp;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.Product;
import com.chuangyejia.bean.Startups;
import com.chuangyejia.bean.User;
import com.chuangyejia.dto.ProductDTO;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.tools.UploadFileUtil;
import com.opensymphony.xwork2.ActionSupport;

public class CreateProductAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	/**
	 * 图片存入数据库中的地址
	 */
	private static final String DB = ServletActionContext.getServletContext().getInitParameter("uploadPictureUrlVir") + "product/";
	/**
	 * 图片实际存入硬盘的地址
	 */
	private static final String DISK = ServletActionContext.getServletContext().getInitParameter("uploadPictureUrlDisk") + "product\\";
	/**
	 * 图片的默认地址
	 */
	@SuppressWarnings("unused")
	private static final String DEFAULT = ServletActionContext.getServletContext().getInitParameter("uploadPictureUrlDef");
	private String productId;
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}

	
	private ProductDTO pd;
	
	private File picture;
	private String pictureFileName;
	private String pictureContentType;
	
	public ProductDTO getPd() {
		return pd;
	}
	public void setPd(ProductDTO pd) {
		this.pd = pd;
	}
	public File getPicture() {
		return picture;
	}
	public void setPicture(File picture) {
		this.picture = picture;
	}
	public String getPictureFileName() {
		return pictureFileName;
	}
	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}
	public String getPictureContentType() {
		return pictureContentType;
	}
	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}
	
	
	
	
	private String uploadPicture() {
		
		/**
		 * 保证传输过来的是图片
		 */
		if(pictureContentType.split("/")[0].equals("image")) {
			/**
			 * 自定义上传的图像名
			 */
			pictureFileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
			
			/**
			 * 获取存入硬盘的具体地址
			 */
			String url = DISK + pictureFileName;
			/**
			 * 根据全路径，将文件创建出来。
			 */
			File file = new File(url);
			
			/**
			 * 标识，创建文件是否成功
			 * 使用上传文件工具类
			 * 如果创建成功，则进行往数据库用户表中更新
			 */
			if(UploadFileUtil.justDoIt(picture, file)) {
				return pictureFileName;
			} else {
				if(file.exists())
					file.delete();
				return "false";
			}
		}
		return "false";
					
	}
	
	
	
	
	public String createProduct() {
		User user = (User)ServletActionContext.getRequest().getSession().getAttribute("user");
		Startups startups = ServiceFactory.createStartupsService().getStartupsInId(pd.getStartups());
		if(user != null && pd.dataValidate() && startups != null && startups.getStartupsLeader().getUserId().equals(user.getUserId())) {
			String result = uploadPicture();
			if(!result.equals("false")) {
				Product product = new Product();
				product.setProductName(pd.getName());
				product.setProductAddress(pd.getAddress());
				product.setProductBrief(pd.getBrief());
				product.setProductCover(DB + result);
				product.setProductCreateDate(new Timestamp(System.currentTimeMillis()));
				product.setProductDetail(pd.getDetail());
				product.setProductStartups(startups);
				product.setProductPrice(pd.getPrice());
				
				if(ServiceFactory.createProductService().saveProduct(product)) {
					this.productId = product.getProductId();
					return SUCCESS;
				} else
					this.addFieldError("error", "保存出错！请刷新重试！");
			} else
				this.addFieldError("error", "图片保存上传错误！请刷新重试！");
		} else 
			this.addFieldError("error", "数据填写出错！请刷新重试！");
		return INPUT;
	}
	
}
