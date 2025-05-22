package com.Donor.Servleet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DB.DBConnect;
import com.entity.Donor;

@WebServlet("/DonorSearchServlet")
public class DonorSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String city = request.getParameter("city");
		String bloodGroup = request.getParameter("blood_group");

		try {
			Connection conn = DBConnect.getConn();
			String sql = "SELECT * FROM donors WHERE city = ? AND blood_group = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, city);
			ps.setString(2, bloodGroup);
			ResultSet rs = ps.executeQuery();

			List<Donor> donors = new ArrayList<Donor>();

			// Check if ResultSet has data
			if (!rs.isBeforeFirst()) {
				System.out.println("No donors found for the given criteria.");
			} else {
				// Process the results and print Donor ID for each record
				while (rs.next()) {
					// Printing Donor ID to console for debugging
					System.out.println("Donor ID: " + rs.getInt("id"));

					Donor donor = new Donor();
					donor.setId(rs.getInt("id"));
					donor.setName(rs.getString("name"));
					donor.setBlood_group(rs.getString("blood_group"));
					donor.setCity(rs.getString("city"));
					donor.setEmail(rs.getString("email"));
					donor.setContactno(rs.getString("contact_no"));
					donors.add(donor);
				}
			}

			// Pass the list of donors to the JSP page
			request.setAttribute("donors", donors);
			request.getRequestDispatcher("donor.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
