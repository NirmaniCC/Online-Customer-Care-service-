package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.EmployeeDao;
import com.connection.DBConnect;
import com.model.EmployeeModel;

@WebServlet("/EmployeeLoginServelet")
public class EmployeeLoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EmployeeLoginServelet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeDao dao = new EmployeeDao(DBConnect.getConnection());
		HttpSession session = request.getSession();
		
		String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        EmployeeModel em = dao.login(email, password);
        
        
        if (em != null ) { 	
        	
        	
        	if ("admin_52000".equals(em.getId())) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("admin/mainAdminDashboard.jsp");
        	}else if ("admin_60355".equals(em.getId())) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("ticketManagement/mainAdminDashboard.jsp");
        	}else if ("admin_66532".equals(em.getId())) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("feedbackManagement/mainAdminDashboard.jsp");
        	}else if ("admin_80203".equals(em.getId())) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("userManagement/mainAdminDashboard.jsp");
        	}else if ("admin_95620".equals(em.getId())) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("articleManagement/mainAdminDashboard.jsp");
        	}
        	
        	        	
        }else {
        	
        	session.setAttribute("failMessage", "Email or password incorrect");
        	response.sendRedirect("login.jsp");        	
        	
        }
        
        
		
	}
	
	

}
