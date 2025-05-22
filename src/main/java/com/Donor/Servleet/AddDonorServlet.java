package com.Donor.Servleet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DB.DBConnect;

@WebServlet("/AddDonorServlet")
public class AddDonorServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get donor details from request
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String bloodGroup = request.getParameter("blood_group");
		String contactNo = request.getParameter("contact_no");
		String city = request.getParameter("city");

		try {
			Connection conn = DBConnect.getConn();
			String sql = "INSERT INTO donors (name, email, blood_group, contact_no, city) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, bloodGroup);
			stmt.setString(4, contactNo);
			stmt.setString(5, city);

			int rows = stmt.executeUpdate();
			if (rows > 0) {
				response.sendRedirect("admin_dashboard.jsp"); // Redirect back to the admin dashboard
			} else {
				response.getWriter().write("Error adding donor");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write("Database error: " + e.getMessage());
		}
	}
}
