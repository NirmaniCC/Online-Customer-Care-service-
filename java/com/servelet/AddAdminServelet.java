package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.EmployeeDao;


@WebServlet("/AddAdminServelet")
public class AddAdminServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AddAdminServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		
		boolean isTrue;
		isTrue = EmployeeDao.addAdmin(name, email, mobile, password);
		
		if (isTrue == true) {
			response.sendRedirect("admin/addAdmin.jsp");
		} else {
			response.sendRedirect("admin/addAdmin.jsp");
		}
		
	}

}
