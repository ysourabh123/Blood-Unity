<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.entity.Donor"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.DonorDAO"%>
<%@ page import="com.DAO.DonorDAOImpl"%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donor Dashboard</title>
<%@include file="all_Component/allCss.jsp"%>
<style>
.size {
	min-height: 0px;
	padding: 60px 0 60px 0;
}

h1 {
	color: white;
}

h3 {
	color: #e74c3c;
	text-align: center;
}

.form-container {
	background-color: white;
	border: .5px solid #eee;
	border-radius: 5px;
	padding: 20px 10px 20px 30px;
	box-shadow: 0px 2px 5px -2px rgba(89, 89, 89, 0.95);
}

.motivational-msg {
	text-align: center;
	font-size: 1.5em;
	color: #2c3e50;
	margin: 20px 0;
}
</style>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>

	<%
	Connection conn = DBConnect.getConn();
	Donor donor = (Donor) session.getAttribute("donor");
	if (donor == null) {
		response.sendRedirect("signin.jsp");
		return;
	}
	%>

	<div class="container-fluid red-background size ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center">
					Welcome,
					<%=donor.getName()%></h1>
				<h3 class="motivational-msg">Thank you for your willingness to
					save lives!</h3>
				<hr class="white-bar">
			</div>
		</div>
	</div>

	<div class="container size ">
		<div class="row">
			<div class="col-md-6 offset-md-3 form-container">
				<h3>Your Profile</h3>
				<hr class="red-bar">

				<!-- Profile Update Form -->
				<form action="update_profile.jsp" method="post">
					<input type="hidden" name="donorId" value="<%=donor.getId()%>" />
					<div class="form-group">
						<label for="name">Name</label> <input type="text" name="name"
							value="<%=donor.getName()%>" class="form-control" required>
					</div>
					<div class="form-group">
						<label for="blood_group">Blood Group</label> <input type="text"
							name="blood_group" value="<%=donor.getBlood_group()%>"
							class="form-control" required>
					</div>
					<div class="form-group">
						<label for="contact_no">Contact No</label> <input type="text"
							name="contact_no" value="<%=donor.getContact_no()%>"
							class="form-control" required>
					</div>
					<div class="form-group">
						<button class="btn btn-danger btn-lg center-aligned" type="submit"
							name="updateProfile">Update Profile</button>
					</div>
				</form>

				<!-- Change Password Form -->
				<form action="change_password.jsp" method="post">
					<input type="hidden" name="donorId" value="<%=donor.getId()%>" />
					<div class="form-group">
						<label for="new_password">New Password</label> <input
							type="password" name="new_password" class="form-control" required />
					</div>
					<div class="form-group">
						<button class="btn btn-warning btn-lg center-aligned"
							type="submit" name="changePassword">Change Password</button>
					</div>
				</form>


				<!-- Delete Account Form -->
				<form action="delete_account.jsp" method="post">
					<input type="hidden" name="donorId" value="<%=donor.getId()%>" />
					<div class="form-group">
						<button class="btn btn-danger btn-lg center-aligned" type="submit"
							name="deleteAccount">Delete Account</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%-- Include Sidebar --%>
	<%@include file="all_Component/sidebar.jsp"%>

	<%-- Include Footer --%>
	<%@include file="all_Component/footer.jsp"%>
</body>
</html>
