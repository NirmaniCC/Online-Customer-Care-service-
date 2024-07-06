package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDao;

@WebServlet("/updateUserServelet")
public class updateUserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updateUserServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String username = request.getParameter("userName");
		String fullname = request.getParameter("fullName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		
		boolean isTrue;
		
		isTrue = UserDao.updateUser(userId, username, fullname, password, email, mobile);
		
		if (isTrue == true) {
			response.sendRedirect("profile.jsp");
		} else {
			response.sendRedirect("profile.jsp#references");
		}
		
	}

}
