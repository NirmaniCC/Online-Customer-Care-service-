package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import com.connection.DBConnect;
import com.model.UserModel;

public class UserDao {

	private static Connection con;
	private static Statement stmt = null;
	
	public UserDao(Connection con) {
		super();
		UserDao.con = con;
	}

	public static boolean registerUser(String userName, String fullName, String password, String email, String mobile) {
		
		boolean isSuccess = false;
		
		Random random = new Random();
		int randomNumber = random.nextInt(90000) + 10000; // Ensures a 5-digit number

		String uniqueID = "user_" + randomNumber;
		
		Date todaysDate = new Date();
        DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        String DateAndTime = df2.format(todaysDate);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO users VALUES ('"+uniqueID+"','"+userName+"','"+fullName+"','"+email+"', '"+mobile+"', '"+password+"', '"+DateAndTime+"')";
			
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
	
	public UserModel login(String email, String password) {
		
		UserModel um = null;
		String sql = null;
		
		
		try {
			
			
			sql = "SELECT * FROM users WHERE email = ? AND password = ?";
		        

			
			if (sql != null) {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				
				ResultSet rs = ps.executeQuery();
				 
				while(rs.next()) {
					um = new UserModel();
					um.setUserId(rs.getString(1));
					um.setUsername(rs.getString(2));
					um.setFullName(rs.getString(3));
					um.setEmail(rs.getString(4));
					um.setMobile(rs.getString(5));
					
				}
			}			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return um;
		
	}
	
	public static boolean updateUser(String userId, String username, String fullname, String password, String email, String mobile) {
		
        boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE users SET username='"+username+"', fullName='"+fullname+"', email='"+email+"' ,mobile='"+mobile+"', password='"+password+"' WHERE user_id = '"+userId+"'";
			
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
