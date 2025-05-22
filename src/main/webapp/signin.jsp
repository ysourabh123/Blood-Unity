<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.entity.Donor"%>
<%@ page import="com.DAO.DonorDAO"%>
<%@ page import="com.DAO.DonorDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood-unity: SignIn</title>
<%@include file="all_Component/allCss.jsp"%>
<style>
.size {
	min-height: 0px;
	padding: 60px 0 60px 0;
}

h1 {
	color: white;
}

.form-group {
	text-align: left;
}

h3 {
	color: #e74c3c;
	text-align: center;
}

.red-bar {
	width: 25%;
}

.form-container {
	background-color: white;
	border: .5px solid #eee;
	border-radius: 5px;
	padding: 20px 10px 20px 30px;
	box-shadow: 0px 2px 5px -2px rgba(89, 89, 89, 0.95);
}
</style>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container-fluid red-background size ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center">SignIn</h1>
				<hr class="white-bar">
			</div>
		</div>
	</div>
	<div class="container size ">
		<div class="row">
			<div class="col-md-6 offset-md-3 form-container">
				<h3>SignIn</h3>
				<hr class="red-bar">

				<%-- Error Messages --%>
				<%
				String errorMessage = (String) request.getAttribute("errorMessage");
				if (errorMessage != null) {
					out.println("<div class='alert alert-danger'>" + errorMessage + "</div>");
				}
				%>

				<form action="LoginServlet" method="post">
					<div class="form-group">
						<label for="email_phone">Email/Phone no.</label> <input
							type="text" name="email_phone" class="form-control"
							placeholder="Email or Phone" required>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							name="password" placeholder="Password" required
							class="form-control">
					</div>
					<div class="form-group">
						<button class="btn btn-danger btn-lg center-aligned" type="submit"
							name="SignIn">Sign In</button>
					</div>

					<%
					if (errorMessage != null) {
					%>
					<div class='alert alert-danger'>
						<%=errorMessage%>
					</div>
					<%
					}
					%>
				</form>
			</div>
		</div>
	</div>
	<%@include file="all_Component/footer.jsp"%>
</body>
</html>
