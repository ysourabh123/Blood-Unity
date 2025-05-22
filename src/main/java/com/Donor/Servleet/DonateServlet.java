package com.Donor.Servleet;

import java.io.IOException;

import com.DAO.DonorDAOImpl;
import com.DB.DBConnect;
import com.entity.Donor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/DonateServlet")
public class DonateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String name = req.getParameter("fname");
			String blood_group = req.getParameter("blood_group");
			String gender = req.getParameter("gender");
			String day = req.getParameter("date");
			String month = req.getParameter("month");
			String year = req.getParameter("year");
			String date_of_birth = year + "-" + month + "-" + day;
			String email = req.getParameter("email");
			String contact_no = req.getParameter("contact_no");
			String city = req.getParameter("city");
			String password = req.getParameter("password");
			String checkbox = req.getParameter("term");

			// System.out.println(name + " " + blood_group + " " + gender + " " +
			// date_of_birth + " " + email + " "
			// + contact_no + " " + city + " " + password + " " + checkbox);
			Donor us = new Donor();
			us.setName(name);
			us.setBlood_group(blood_group);
			us.setGender(gender);
			us.setDate_of_birth(date_of_birth);
			us.setEmail(email);
			us.setContactno(contact_no);
			us.setCity(city);
			us.setPassword(password);

			HttpSession session = req.getSession();

			if (checkbox != null) {
				DonorDAOImpl dao = new DonorDAOImpl(DBConnect.getConn());
				boolean f = dao.donordonate(us);
				if (f) {
					 //System.out.println("user Register Success...");

					session.setAttribute("succMsg", "Donor Registration Successfully");
					resp.sendRedirect("success.jsp");

				} else {
					 //System.out.println("Something went wrong on server..");

					session.setAttribute("failedMsg", "Something went wrong on server...");
					resp.sendRedirect("donate.jsp");

				}

			} else {
				 //System.out.println("Please check agree & terms condition");

				session.setAttribute("failedMsg", "Plese check agree & terms condeition");
				resp.sendRedirect("donate.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
