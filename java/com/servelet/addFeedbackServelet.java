package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.FeedbackDao;

@WebServlet("/addFeedbackServelet")
public class addFeedbackServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public addFeedbackServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		int feedback_type_id = Integer.parseInt(request.getParameter("feedback_type"));
        String message1 = request.getParameter("message");
        
        System.out.println("Received data - userId: " + userId + ", feedback_type_id: " + feedback_type_id + ", message: " + message1);
        
        boolean isTrue;
		isTrue = FeedbackDao.addFeedback(userId, feedback_type_id, message1);
		
		if (isTrue == true) {
			response.sendRedirect("./contact.jsp");
		} else {
			response.sendRedirect("./index.jsp");
		}
	}

}
