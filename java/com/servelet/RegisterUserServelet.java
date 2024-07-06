package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDao;


@WebServlet("/RegisterUserServelet")
public class RegisterUserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterUserServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        
        boolean isTrue;
		isTrue = UserDao.registerUser(username, fullname, password, email, mobile);
		
		if (isTrue == true) {
			response.sendRedirect("./login.jsp");
		} else {
			response.sendRedirect("userRegister.jsp");
		}
	}

}
