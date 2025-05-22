<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.SQLException"%>
<%
String donorId = request.getParameter("donorId");
Connection conn = null;

try {
	conn = DBConnect.getConn(); // Use the DBConnect class for connection

	String sql = "DELETE FROM donors WHERE id=?";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, donorId);

	int rowsDeleted = ps.executeUpdate();
	if (rowsDeleted > 0) {
		out.println("<script>alert('Account deleted successfully!'); window.location.href='signin.jsp';</script>");
	} else {
		out.println(
		"<script>alert('No donor found with this ID.'); window.location.href='donor_dashboard.jsp';</script>");
	}
} catch (Exception e) {
	e.printStackTrace();
	out.println(
	"<script>alert('An error occurred while deleting your account.'); window.location.href='donor_dashboard.jsp';</script>");
} finally {
	if (conn != null) {
		try {
	conn.close();
		} catch (SQLException e) {
	e.printStackTrace();
		}
	}
}
%>
