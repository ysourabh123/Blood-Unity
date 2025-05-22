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

@WebServlet("/DeleteDonorServlet")
public class DeleteDonorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get donor ID from request
        int donorId = Integer.parseInt(request.getParameter("donorId"));

        // Delete the donor from the database
        Connection conn = DBConnect.getConn();
        DonorDAO donorDAO = new DonorDAOImpl(conn);

        boolean deleted = donorDAO.deleteDonor(donorId);
        if (deleted) {
            response.sendRedirect("admin_dashboard.jsp");
        } else {
            response.getWriter().write("Error deleting donor");
        }
    }
}