package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import com.connection.DBConnect;
import com.model.EmployeeModel;

public class EmployeeDao {
	
	private static Connection con;
	private static Statement stmt = null;

	public EmployeeDao(Connection con) {
		EmployeeDao.con = con;
	}
	
	public EmployeeModel login(String email, String password) {
		
		EmployeeModel em = null;
		String sql = null;
		
		
		try {
			
			
			sql = "SELECT * FROM admin WHERE email = ? AND password = ?";
		        

			
			if (sql != null) {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				
				ResultSet rs = ps.executeQuery();
				 
				while(rs.next()) {
					em = new EmployeeModel();
					em.setId(rs.getString(1));
					em.setName(rs.getString(2));
					em.setEmail(rs.getString(3));
					em.setPhone(rs.getString(5));;
					
				}
			}			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return em;
		
	}
	
	public static boolean addAdmin(String name, String email, String mobile, String password) {
		
		boolean isSuccess = false;
		
		Random random = new Random();
		int randomNumber = random.nextInt(90000) + 10000; // Ensures a 5-digit number

		String uniqueID = "admin_" + randomNumber;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO admin VALUES ('"+uniqueID+"', '"+name+"', '"+email+"', '"+mobile+"', '"+password+"')";
			
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
	
	public static boolean updateAdmin(String userId, String name, String email, String mobile, String password) {
		
        boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE admin SET full_name='"+name+"', email='"+email+"' ,mobile='"+mobile+"', password='"+password+"' WHERE admin_id = '"+userId+"'";
			
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
