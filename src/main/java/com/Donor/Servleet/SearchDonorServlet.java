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

@WebServlet("/SearchDonorServlet") // Updated servlet name
public class SearchDonorServlet extends HttpServlet { // Updated class name
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

			if (!rs.isBeforeFirst()) {
				System.out.println("No donors found for the given criteria.");
			} else {
				while (rs.next()) {
					Donor donor = new Donor();
					donor.setId(rs.getInt("id"));
					donor.setName(rs.getString("name"));
					donor.setBlood_group(rs.getString("blood_group"));
					donor.setCity(rs.getString("city"));
					donor.setEmail(rs.getString("email"));
					donor.setContactno(rs.getString("contact_no")); // Ensure this matches your Donor class
					donors.add(donor);
				}
			}

			request.setAttribute("donors", donors);
			request.getRequestDispatcher("search.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
