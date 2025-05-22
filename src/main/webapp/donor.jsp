<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.Donor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood-Unity : Donors</title>
<%@include file="all_Component/allCss.jsp"%>

<style>
.size {
	min-height: 0px;
	padding: 60px 0 40px 0;
}

.loader {
	display: none;
	width: 69px;
	height: 89px;
	position: absolute;
	top: 25%;
	left: 50%;
	padding: 2px;
	z-index: 1;
}

.loader .fa {
	color: #e74c3c;
	font-size: 52px !important;
}

h1 {
	color: white;
}

h3 {
	color: #e74c3c;
	text-align: center;
}

.red-bar {
	width: 25%;
}

.donors_data {
	background-color: white;
	border-radius: 5px;
	margin: 20px 5px 0px 5px;
	padding: 20px;
}

/* Card styling */
.card {
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	padding: 15px;
	background-color: #fff;
}

.card-header {
	font-size: 20px;
	font-weight: bold;
	color: #e74c3c;
}

.card-body {
	padding: 15px;
	font-size: 16px;
}
</style>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container-fluid red-background size">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center">Donors</h1>
				<hr class="white-bar">
			</div>
		</div>
	</div>

	<div class="loader" id="wait">
		<i class="fa fa-circle-o-notch fa-spin" aria-hidden="true"></i>
	</div>
	<div class="container" style="padding: 60px 0 60px 0;">
		<div class="row" id="data">

			<!-- Display The Search Result -->
			<div class="container">
				<h1 class="text-center text-danger">Donor List</h1>
				<hr>

				<%
				List<Donor> donors = (List<Donor>) request.getAttribute("donors");
				if (donors != null && !donors.isEmpty()) {
				%>
				<div class="donors_data">
					<div class="row">
						<%
						for (Donor donor : donors) {
						%>
						<!-- Each donor's information in a card -->
						<div class="col-md-4">
							<div class="card">
								<div class="card-header">
									<%=donor.getName()%>
								</div>
								<div class="card-body">
									<p>
										<strong>Blood Group: </strong>
										<%=donor.getBlood_group()%></p>
									<p>
										<strong>City: </strong>
										<%=donor.getCity()%></p>
									<p>
										<strong>Email: </strong>
										<%=donor.getEmail()%></p>
									<p>
										<strong>Contact No: </strong>
										<%=donor.getContact_no()%></p>
								</div>
							</div>
						</div>
						<%
						}
						%>
					</div>
				</div>
				<%
				} else {
				%>
				<div class="alert text-center text-danger">No donors found for
					the selected criteria.</div>
				<%
				}
				%>
			</div>

		</div>
	</div>
	<div class="loader" id="wait">
		<i class="fa fa-circle-o-notch fa-spin" aria-hidden="true"></i>
	</div>

	<%@include file="all_Component/footer.jsp"%>
</body>
</html>
