package com.chuangyejia.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IdentifyCode
 */
/*@WebServlet("/IdentifyCode")*/
public class IdentifyCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdentifyCode() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    /**
     * 这是将数字转换为汉字的函数
     * @param number (0123456789)
     * @return String (零壹贰叁肆伍陆柒捌玖)
     */
    private String changeNumber(int number) {
    	final String chineseNum = "零壹贰叁肆伍陆柒捌玖";
    	switch(number) {
    	case 0:
    		return String.valueOf(chineseNum.charAt(0));
    	case 1:
    		return String.valueOf(chineseNum.charAt(1));
    	case 2:
    		return String.valueOf(chineseNum.charAt(2));
    	case 3:
    		return String.valueOf(chineseNum.charAt(3));
    	case 4:
    		return String.valueOf(chineseNum.charAt(4));
    	case 5:
    		return String.valueOf(chineseNum.charAt(5));
    	case 6:
    		return String.valueOf(chineseNum.charAt(6));
    	case 7:
    		return String.valueOf(chineseNum.charAt(7));
    	case 8:
    		return String.valueOf(chineseNum.charAt(8));
    	case 9:
    		return String.valueOf(chineseNum.charAt(9));
    		default:
    			return null;
    	}
    }
    
    /**
     * 
     * 这是将运算符号转换为汉字的函数
     * @param sign (+-*)
     * @return String (加减乘)
     */
    private String changeSign(String sign) {
    	final String chineseSign = "加减乘";
    	switch(sign) {
    	case "+":
    		return String.valueOf(chineseSign.charAt(0));
    	case "-":
    		return String.valueOf(chineseSign.charAt(1));
    	case "*":
    		return String.valueOf(chineseSign.charAt(2));
    		default:
    			return null;
    	}
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Random random = new Random();
		int lineNum = random.nextInt(10)+4;
		
		BufferedImage bi = new BufferedImage(110, 30, BufferedImage.TYPE_INT_RGB);
		
		Graphics g = bi.getGraphics();
		Color c = g.getColor();
		
		/**
		 * 设定要使用的数组
		 */
		String[] arr1 = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"};
		String[] arr2 = {"+", "-", "*"};
		String[] arr3 = {"1", "2", "3", "4", "5", "6", "7", "8", "9"};
		
		String s1 = arr1[random.nextInt(9)];
		String s2 = arr2[random.nextInt(2)];
		String s3 = arr3[random.nextInt(8)];
		
		/**
		 * 计算数字结果
		 */
		Integer result = 0;
		switch(s2) {
		case "+":
			result = Integer.valueOf(s1) + Integer.valueOf(s3);
			break;
		case "-":
			result = Integer.valueOf(s1) - Integer.valueOf(s3);
			break;
		case "*":
			result = Integer.valueOf(s1) * Integer.valueOf(s3);
			break;
		}
		
		/**
		 * 将数字和运算符转换为汉字
		 */
		String code = changeNumber(Integer.valueOf(s1)) + changeSign(s2) + changeNumber(Integer.valueOf(s3)) + "等于";
		
		/**
		 * 进行绘画处理
		 */
		g.setColor(Color.LIGHT_GRAY);
		g.setFont(new Font(code, Font.ITALIC, 19));
		g.drawString(code, 0, 20);
		/*g.setColor(Color.yellow);
		for(int i = 1; i <= lineNum; i++) {
			g.drawLine(0, 10*i, 110, (30/lineNum)*i);
		}
		for(int i = lineNum; i >= 1; i--) {
			g.drawLine(0, 10*i, 110, (30/lineNum)*i);
		}*/
		response.setContentType("image/jpeg");
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		g.setColor(c);
		
		/**
		 * 将验证码的数字结果存入session
		 */
		HttpSession identifyCode = request.getSession(true);
		identifyCode.setAttribute("code", code);
		OutputStream os = response.getOutputStream();
		ImageIO.write(bi, "JPEG", os);
		
		System.out.println(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
