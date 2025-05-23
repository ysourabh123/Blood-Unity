<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isErrorPage="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood-Unity : Donate</title>
<%@include file="all_Component/allCss.jsp"%>
<style>
.size {
	min-height: 0px;
	padding: 60px 0 40px 0;
}

.form-container {
	background-color: white;
	border: .5px solid #eee;
	border-radius: 5px;
	padding: 20px 10px 20px 30px;
	-webkit-box-shadow: 0px 2px 5px -2px rgba(89, 89, 89, 0.95);
	-moz-box-shadow: 0px 2px 5px -2px rgba(89, 89, 89, 0.95);
	box-shadow: 0px 2px 5px -2px rgba(89, 89, 89, 0.95);
}

.form-group {
	text-align: left;
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
</style>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container-fluid red-background size">
		<div class="row">
			<div class="col-md-6 offset-md-3 p-3">
				<h1 class="text-center">Donate</h1>
				<hr class="white-bar">

			</div>
		</div>
	</div>
	<div class="container size">
		<div class="row">
			<div class="col-md-6 offset-md-3 form-container">
				<h3>SignUp</h3>

				<hr class="red-bar">
				<!-- Error Messages -->
				<form action="DonateServlet" method="POST" class="form">
					<div class="form-group">
						<label for="fullname">Full Name</label> <input type="text"
							id="fullname" placeholder="Full Name" required="required"
							name="fname" pattern="[A-Za-z/\s]+"
							title="Only lower and upper case and space" class="form-control">
					</div>
					<!--full name-->
					<div class="form-group">
						<label for="name">Blood Group</label><br> <select
							class="form-control demo-default" id="blood_group"
							required="required" name="blood_group">
							<option value="">---Select Your Blood Group---</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="O+">O+</option>
							<option value="O-">O+</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
						</select>
					</div>
					<!--End form-group-->
					<div class="form-group">
						<label for="gender">Gender</label><br> Male<input
							type="radio" name="gender" id="gender" value="Male"
							style="margin-left: 10px; margin-right: 10px;" checked>
						Female<input type="radio" name="gender" id="gender" value="Female"
							style="margin-left: 10px;">
					</div>
					<!--gender-->
					<div class="form-inline">
						<label for="name">Date of Birth</label><br> <select
							class="form-control demo-default" id="date" name="date"
							style="margin-bottom: 10px;" required>
							<option value="">---Date---</option>
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select> <select class="form-control demo-default" name="month" id="month"
							style="margin-bottom: 10px;" required>
							<option value="">---Month---</option>
							<option value="01">January</option>
							<option value="02">February</option>
							<option value="03">March</option>
							<option value="04">April</option>
							<option value="05">May</option>
							<option value="06">June</option>
							<option value="07">July</option>
							<option value="08">August</option>
							<option value="09">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						</select> <select class="form-control demo-default" id="year" name="year"
							style="margin-bottom: 10px;" required>
							<option value="">---Year---</option>
							<option value="1957">1957</option>
							<option value="1958">1958</option>
							<option value="1959">1959</option>
							<option value="1960">1960</option>
							<option value="1961">1961</option>
							<option value="1962">1962</option>
							<option value="1963">1963</option>
							<option value="1964">1964</option>
							<option value="1965">1965</option>
							<option value="1966">1966</option>
							<option value="1967">1967</option>
							<option value="1968">1968</option>
							<option value="1969">1969</option>
							<option value="1970">1970</option>
							<option value="1971">1971</option>
							<option value="1972">1972</option>
							<option value="1973">1973</option>
							<option value="1974">1974</option>
							<option value="1975">1975</option>
							<option value="1976">1976</option>
							<option value="1977">1977</option>
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>


						</select>
					</div>
					<!--End form-group-->
					<div class="form-group">
						<label for="fullname">Email</label> <input type="text"
							name="email" id="email" placeholder="Email"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
							title="Please write correct email" class="form-control">
					</div>
					<div class="form-group">
						<label for="contact_no">Contact No</label> <input type="text"
							name="contact_no" value="" placeholder="03********"
							class="form-control" required pattern="^\d{11}$"
							title="11 numeric characters only" maxlength="11">
					</div>
					<!--End form-group-->
					<div class="form-group">
						<label for="city">City</label> <select name="city" id="city"
							class="form-control demo-default" required>
							<option value="">-- Select --</option>
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

						</select>
					</div>
					<!--city end-->
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							name="password" value="" placeholder="Password"
							class="form-control" required pattern="{6,}">
					</div>
					<!--End form-group-->
					<div class="form-inline">
						<input type="checkbox" name="term" value="true" required
							style="margin-left: 10px;"> <span
							style="margin-left: 10px;"><b>I am agree to donate my
								blood and show my Name, Contact Nos. and E-Mail in Blood donors
								List</b></span>
					</div>
					<!--End form-group-->

					<form action="success.jsp" method="post">
						<div class="form-group">
							<button id="submit" name="submit" type="submit"
								class="btn btn-lg btn-danger center-aligned"
								style="margin-top: 20px;">SignUp</button>
						</div>
					</form>

				</form>
			</div>
		</div>
	</div>
	<%@include file="all_Component/footer.jsp"%>
</body>
</html>