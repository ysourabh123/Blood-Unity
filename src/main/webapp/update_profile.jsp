<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.SQLException"%>

<%
String donorId = request.getParameter("donorId");
String newPassword = request.getParameter("new_password");

Connection conn = null;

try {
	// Check if donorId or newPassword is null or empty
	if (donorId == null || donorId.trim().isEmpty() || newPassword == null || newPassword.trim().isEmpty()) {
		out.println(
		"<script>alert('Donor ID and new password must not be empty.'); window.location.href='donor_dashboard.jsp';</script>");
		return; // Exit the JSP
	}

	conn = DBConnect.getConn(); // Use the DBConnect class for connection

	String sql = "UPDATE donors SET password=? WHERE id=?";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, newPassword);
	ps.setString(2, donorId);

	int rowsUpdated = ps.executeUpdate();
	if (rowsUpdated > 0) {
		out.println(
		"<script>alert('Password changed successfully!'); window.location.href='donor_dashboard.jsp';</script>");
	} else {
		out.println(
		"<script>alert('No donor found with this ID.'); window.location.href='donor_dashboard.jsp';</script>");
	}
} catch (SQLException e) {
	e.printStackTrace();
	out.println(
	"<script>alert('An error occurred while changing your password. Please try again.'); window.location.href='donor_dashboard.jsp';</script>");
} catch (Exception e) {
	e.printStackTrace();
	out.println("<script>alert('An unexpected error occurred.'); window.location.href='donor_dashboard.jsp';</script>");
} finally {
	// Ensure the connection is closed to avoid memory leaks
	if (conn != null) {
		try {
	conn.close();
		} catch (SQLException e) {
	e.printStackTrace();
		}
	}
}
%>
