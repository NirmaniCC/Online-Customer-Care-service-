package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.FeedbackDao;


@WebServlet("/updateAdminFeedbackServelet")
public class updateAdminFeedbackServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updateAdminFeedbackServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String feedbackId = request.getParameter("id");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = FeedbackDao.updateFeedback(feedbackId, message);
		
		if (isTrue == true) {
			response.sendRedirect("feedbackManagement/feedbacks.jsp");
		} else {
			response.sendRedirect("feedbackManagement/feedbacks.jsp");
		}
	}

}
