package com.DAO;

import java.sql.Connection;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.connection.DBConnect;

public class TicketDao {

	public TicketDao() {
		// TODO Auto-generated constructor stub
	}
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean addTicket(String userId, String subject, int catergory, String description) {
		
		boolean isSuccess = false;
		
		Date todaysDate = new Date();
        DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        String DateAndTime = df2.format(todaysDate);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO tickets VALUES (0,'"+subject+"','"+description+"', 1, '"+DateAndTime+"', '"+DateAndTime+"', "+catergory+", '"+userId+"')";
			
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
	
	public static boolean updateTicket(String ticketID, String subject, String description) {
		
        boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE tickets SET subject='"+subject+"', description='"+description+"' WHERE ticket_id = '"+ticketID+"'";
			
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
