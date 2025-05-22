<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAO.DonorDAO"%>
<%@ page import="com.DAO.DonorDAOImpl"%>
<%@ page import="com.entity.Donor"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Manage Donors</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

h1 {
	text-align: center;
	color: #e74c3c;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	background-color: #ffffff;
	margin-top: 20px; /* Add space between the form and table */
}

th, td {
	border: 1px solid #dddddd;
	padding: 12px;
	text-align: left;
}

th {
	background-color: #e74c3c;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f1c40f;
	color: #fff;
}

input[type="text"] {
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 6px;
	width: 90%;
	box-sizing: border-box;
}

button {
	background-color: #2ecc71;
	color: white;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin-right: 5px; /* Added margin for spacing */
}

button:hover {
	background-color: #27ae60;
}

form {
	display: inline;
}

.container {
	max-width: 1000px;
	margin: 0 auto;
	padding: 20px;
	background: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.action-buttons {
	display: flex; /* Use flexbox for alignment */
	gap: 5px; /* Space between buttons */
}

.add-donor-row {
	background-color: #f9f9f9; /* Light background for add row */
}
</style>
</head>
<body>

	<div class="container">
		<h1>All Donors</h1>

		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Blood Group</th>
				<th>Contact No</th>
				<th>City</th>
				<th>Actions</th>
			</tr>

			<%
			Connection conn = DBConnect.getConn();
			DonorDAO donorDAO = new DonorDAOImpl(conn);
			List<Donor> donors = donorDAO.getAllDonors();
			for (Donor donor : donors) {
			%>
			<tr>
				<td><%=donor.getId()%></td>
				<td>
					<form action="EditDonorServlet" method="post">
						<input type="hidden" name="donorId" value="<%=donor.getId()%>" />
						<input type="text" name="name" value="<%=donor.getName()%>" />
				</td>
				<td><%=donor.getEmail()%></td>
				<td><input type="text" name="blood_group"
					value="<%=donor.getBlood_group()%>" /></td>
				<td><input type="text" name="contact_no"
					value="<%=donor.getContact_no()%>" /></td>
				<td><input type="text" name="city" value="<%=donor.getCity()%>" />
				</td>
				<td class="action-buttons">
					<!-- Edit button submits the update form -->
					<button type="submit" name="editDonor">Edit</button>
					</form> <!-- Delete button triggers delete action -->
					<form action="DeleteDonorServlet" method="post">
						<input type="hidden" name="donorId" value="<%=donor.getId()%>" />
						<button type="submit" name="deleteDonor">Delete</button>
					</form>
				</td>
			</tr>
			<%
			}
			%>

			<!-- Row to add a new donor -->
			<tr class="add-donor-row">
				<td>New</td>
				<td>
					<form action="AddDonorServlet" method="post">
						<input type="text" name="name" placeholder="Name" required />
				</td>
				<td><input type="text" name="email" placeholder="Email"
					required /></td>
				<td><input type="text" name="blood_group"
					placeholder="Blood Group (A+, A-, B+, B-, O+, O-, AB+, AB-)"
					required /></td>
				<td><input type="text" name="contact_no"
					placeholder="Contact No" required /></td>
				<td><input type="text" name="city" placeholder="City" required /></td>
				<td class="action-buttons">
					<button type="submit" name="addDonor">Add</button>
					</form>
				</td>
			</tr>

		</table>
	</div>

</body>
</html>
