package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDao;
import com.connection.DBConnect;
import com.model.UserModel;


@WebServlet("/UserLoginServelet")
public class UserLoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public UserLoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDao dao = new UserDao(DBConnect.getConnection());
		HttpSession session = request.getSession();
		
		String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserModel um = dao.login(email, password);
        
        if (um != null ) { 
        	
    	    session.setAttribute("userObj", um);
    	    response.sendRedirect("./index.jsp");
        	
        	        	
        }else {
        	
        	session.setAttribute("failMessage", "Email or password incorrect");
        	response.sendRedirect("login.jsp");        	
        	
        }
	}

}
