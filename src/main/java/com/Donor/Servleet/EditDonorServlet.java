package com.Donor.Servleet;

import java.io.IOException;
import java.sql.Connection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DAO.DonorDAO;
import com.DAO.DonorDAOImpl;
import com.DB.DBConnect;
import com.entity.Donor;

@WebServlet("/EditDonorServlet")
public class EditDonorServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get donor data from request
		int donorId = Integer.parseInt(request.getParameter("donorId"));
		String name = request.getParameter("name");
		String bloodGroup = request.getParameter("blood_group");
		String contactNo = request.getParameter("contact_no");
		String city = request.getParameter("city");

		// Create Donor object with updated values
		Donor donor = new Donor();
		donor.setId(donorId);
		donor.setName(name);
		donor.setBlood_group(bloodGroup);
		donor.setContactno(contactNo);
		donor.setCity(city);

		// Update the donor in the database
		Connection conn = DBConnect.getConn();
		DonorDAO donorDAO = new DonorDAOImpl(conn);

		boolean updated = donorDAO.updateDonor(donor);
		if (updated) {
			response.sendRedirect("admin_dashboard.jsp");
		} else {
			response.getWriter().write("Error updating donor information");
		}
	}
}
