package com.DAO;

import java.sql.Connection;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.connection.DBConnect;

public class FeedbackDao {

	public FeedbackDao() {
		// TODO Auto-generated constructor stub
	}
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean addFeedback(String userId, int feedbackType, String messsage1) {
		
		boolean isSuccess = false;
		
		
		Date todaysDate = new Date();
        DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        String DateAndTime = df2.format(todaysDate);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO feedback VALUES (0,'"+messsage1+"','"+DateAndTime+"', '"+userId+"', "+feedbackType+")";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	public static boolean updateFeedback(String feedbackId, String message) {
		
        boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE feedback SET message='"+message+"' WHERE feedback_id = '"+feedbackId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}

}
