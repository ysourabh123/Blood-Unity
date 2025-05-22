package com.Donor.Servleet;

import com.DAO.DonorDAO;
import com.DAO.DonorDAOImpl;
import com.DB.DBConnect;
import com.entity.Donor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String emailOrPhone = request.getParameter("email_phone");
		String password = request.getParameter("password");

		// Check for admin login
		if ("admin@gmail.com".equals(emailOrPhone) && "1234".equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("admin", "true");
			response.sendRedirect("admin_dashboard.jsp");
			return;
		}

		// Check for donor login
		Connection conn = DBConnect.getConn();
		DonorDAO donorDAO = new DonorDAOImpl(conn);
		Donor donor = donorDAO.login(emailOrPhone, password);

		if (donor != null) {
			HttpSession session = request.getSession();
			session.setAttribute("donor", donor);
			response.sendRedirect("donor_dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Invalid email/phone or password!");
			request.getRequestDispatcher("signin.jsp").forward(request, response);
		}
	}
}
