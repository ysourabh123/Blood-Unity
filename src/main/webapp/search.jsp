<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.Donor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood-Unity: Search Donors</title>
<%@include file="all_Component/allCss.jsp"%>

<!-- Styles for the donor cards -->
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

h1, h3 {
	color: white;
}

.red-bar {
	width: 25%;
}

.form-group {
	padding-right: 20px;
}

/* Styling for the donor cards */
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

.donors_data {
	margin-top: 30px;
}
</style>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="main">
		<div class="container-fluid red-background size">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<h1 class="text-center">Search Donors</h1>
					<hr class="white-bar">
					<br>
					<!-- Form to search for donors -->
					<form action="SearchDonorServlet" method="post">
						<!-- Updated servlet name -->
						<div class="form-inline text-center"
							style="padding: 40px 0px 0px 5px;">
							<div class="form-group text-center center-aligned">
								<select style="width: 220px; height: 45px;" name="city"
									id="city" class="form-control demo-default" required>
									<option value="">-- Select City --</option>
									<!-- City options -->
									<optgroup title="Maharashtra" label="&raquo; Ahmednagar"></optgroup>
									<option value="Kopargoan">Kopargoan</option>
									<option value="Pathardi">Pathardi</option>
									<option value="Rahuri">"Rahuri"</option>
									<option value="Shirdi">Shirdi</option>
									<option value="Muzaffarabad">Muzaffarabad</option>
									<option value="Bhandardara">Bhandardara</option>
									<option value="Karjat">Karjat</option>
									<option value="Newasa">Newasa</option>
									<optgroup title="Akola" label="&raquo; Akola"></optgroup>
									<option value="Akot">Akot</option>
									<option value="Balapur">Balapur</option>
									<option value="Bolan">Bolan</option>
									<option value="Telhara">Telhara</option>
									<option value="Patur">Patur</option>
									<option value="Barsi Takli">"Barsi Takli</option>
									<option value="Jafarabad">Jafarabad</option>
									<option value="Lohara">Lohara</option>
									<option value="Kalat">Kalat</option>
									<option value="Malakpur">Malakpur</option>
									<option value="Gaigaon">Gaigaon</option>
									<option value="Wadegaon">Wadegaon</option>
									<option value="Kalwadi">Kalwadi</option>
									<optgroup title="Aurangabad" label="&raquo; Aurangabad"></optgroup>
									<option value="Paithan">Paithan</option>
									<option value="Gangapur">Gangapur</option>
									<option value="Bahawalnagar">Bahawalnagar</option>
									<option value="Khuldabad">Khuldabad</option>
									<option value="Bhakkar">Bhakkar</option>
									<option value="Soegaon">Soegaon</option>
									<option value="Chiniot">Chiniot</option>
									<option value="Wadegaon Kolhati">Wadegaon Kolhati</option>
									<option value="Beed">Beed</option>
									<option value="Vajapur">Vajapur</option>
									<option value="Gujrat">Gujrat</option>
									<option value="Kannad">Kannad</option>
									<option value="Jhang">Jhang</option>
									<optgroup title="Kolhapur" label="&raquo; Kolhapur"></optgroup>
									<option value="Gangapur">Gangapur</option>
									<option value="Panhala">Panhala</option>
									<option value="Gadhinglaj">Gadhinglaj</option>
									<option value="Kagal">Kagal</option>
									<option value="Hatkanagale">Hatkanagale</option>
									<option value="Chiniot">Chiniot</option>
									<option value="Hupari">Hupari</option>
									<option value="Tarabai park">arabai park</option>
									<option value="Vajapur">Vajapur</option>
									<optgroup title="Mumbai & Navi Mumbai"
										label="&raquo; Mumbai & Navi Mumbai"></optgroup>
									<option value="Chhatrapati Shivaji Terminus">Chhatrapati
										Shivaji Terminus</option>
									<option value="Byculla">Byculla</option>
									<option value="Dadar">Dadar</option>
									<option value="Kurla">Kurla</option>
									<option value="Ghatkopar">Ghatkopar</option>
									<option value="Mulund">Mulund</option>
									<option value="Bhandup">Bhandup</option>
									<option value="Thane">Thane</option>
									<option value="Dombivli">Dombivli</option>
									<option value="Vithalwadi">Vithalwadi</option>
									<option value="Ulhas Nagar">Ulhas Nagar</option>
									<option value="Ambernath">Ambernath</option>
									<option value="Badlapur">Badlapur</option>
									<option value="Vangani">Vangani</option>
									<option value="Shelu">Shelu</option>
									<option value="Neral">Neral</option>
									<option value="Bhivpuri road">Bhivpuri road</option>
									<option value="Karjat">Karjat</option>
									<option value="Khopoli">Khopoli</option>
									<option value="Auranagabad">Auranagabad</option>
									<option value="Panvel">Panvel</option>
									<!-- Add more cities as needed -->

									<!-- Add more cities as needed -->
								</select>
							</div>
							<div class="form-group center-aligned pl-3">
								<select name="blood_group" id="blood_group"
									style="padding: 0 20px; width: 220px; height: 45px;"
									class="form-control demo-default text-center margin10px">
									<option value="A+">A+</option>
									<option value="A-">A-</option>
									<option value="B+">B+</option>
									<option value="B-">B-</option>
									<option value="AB+">AB+</option>
									<option value="AB-">AB-</option>
									<option value="O+">O+</option>
									<option value="O-">O-</option>
								</select>
							</div>
							<div class="form-group center-aligned pl-3">
								<button type="submit" class="btn btn-lg btn-default" id="search">Search</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- Section to display donors -->
		<div class="container donors_data">
			<h3 class="text-center text-danger">Donors List</h3>
			<hr class="red-bar">

			<!-- Check if donors list is present -->
			<%
			List<Donor> donors = (List<Donor>) request.getAttribute("donors");
			if (donors != null && !donors.isEmpty()) {
			%>
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
								<strong>Blood Group:</strong>
								<%=donor.getBlood_group()%>
							</p>
							<p>
								<strong>City:</strong>
								<%=donor.getCity()%>
							</p>
							<p>
								<strong>Contact No:</strong>
								<%=donor.getContact_no()%>
							</p>
							<p>
								<strong>Email:</strong>
								<%=donor.getEmail()%>
							</p>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
			<%
			} else {
			%>
			<!-- Show only when no donors are found -->
			<div class="alert text-center text-danger">No donors found for
				the given search criteria.</div>
			<%
			}
			%>
		</div>
	</div>

	<%@include file="all_Component/footer.jsp"%>
</body>
</html>
