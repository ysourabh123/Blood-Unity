<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BLOOD-UNITY</title>
<%@include file="all_Component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/header2.jpeg");
	width: 100%;
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
	height: 90vh;
	min-height: 460px;
	padding: 10px;
	color: white;
	font-weight: 700;
}

.back-img p {
	font-weight: 100;
	font-size: 18px;
}

.form-group {
	padding-right: 20px;
}

.header {
	margin: 0;
	padding: 20px 0;
}

.red-background p {
	padding: 40px;
}

.btn-danger {
	background-color: #e74c3c;
	border-radius: 25px;
	padding: 10px 30px;
	font-size: 22px;
	font-weight: 700;
}

.red {
	color: #e74c3c;
}

.btn-default {
	color: #e74c3c;;
	border-radius: 25px;
	padding: 10px 30px;
	font-size: 22px;
	font-weight: 700;
	background-color: #fff;
}

.btn-default:hover {
	color: #333;
	background-color: #e6e6e6;
	border-color: #adadad;
}

.center-aligned {
	display: table;
	margin: 0 auto;
}

.margin10px {
	margin: 10px;
}
</style>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row mt-2">
			<div class="col-md-6 offset-md-3">

				<div class="header mt-2">
					<h1 class="text-center p-5">Donate the blood, save the life</h1>
					<p class="text-center">Donate the blood to help the others.</p>
				</div>
				<h1 class="text-center p-3 mt-2">Search The Donors</h1>
				<hr class="white-bar text-center">

				<form action="DonorSearchServlet" method="post"
					class="form-inline text-center" style="padding: 40px 0px 0px 5px;">
					<div class="form-group text-center justify-content-center">

						<select style="width: 220px; height: 45px;" name="city" id="city"
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
					<div class="form-group center-aligned">
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
					<div class="form-group center-aligned ">
						<button type="submit" class="btn btn-lg btn-danger" value=search>Search</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- header ends -->

	<!-- donate section -->
	<div class="container-fluid red-background">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center"
					style="color: white; font-weight: 700; padding: 10px 0 0 0;">BLOOD-UNITY</h1>
				<hr class="white-bar">
				<p class="text-center pera-text">At Blood Unity, we believe that
					the power to save lives lies within each of us. Our mission is to
					unite communities and individuals through the simple yet profound
					act of blood donation. Every drop counts, and with your help, we
					can ensure that hospitals and patients in need receive the vital
					blood supplies required to overcome emergencies, surgeries, and
					chronic illnesses. Blood donation is a life-saving act that takes
					only a few minutes but has a lasting impact. A single donation can
					save up to three lives, providing hope to accident victims, cancer
					patients, and individuals undergoing surgery. At Blood Unity, we
					make it easy for you to contribute to this life-changing mission.
					At Blood Unity, we make it easy for you to contribute to this
					life-changing mission.</p>
				<a href="#"
					class="btn btn-default btn-lg text-center center-aligned">Become
					a Life Saver!</a>
			</div>
		</div>
	</div>
	<!-- end doante section -->


	<div class="container ">
		<div class="row">
			<div class="col">
				<div class="card">
					<h3 class="text-center red">Our Vission</h3>
					<img src="img/binoculars.png" alt="Our Vission"
						class="img img-responsive" width="168" height="168">
					<p class="text-center">At Blood Unity, our vision is to create
						a world where no life is lost due to the lack of accessible blood.
						We aim to foster a society that is empowered by unity, where
						individuals come together to provide lifesaving support through
						blood donation. We envision a future where every patient in need
						can rely on an abundant and safe blood supply, bringing
						communities closer through the act of giving.We envision to give
						userfriendly expirence to every user .</p>
				</div>
			</div>

			<div class="col">
				<div class="card">
					<h3 class="text-center red">Our Goal</h3>
					<img src="img/target.png" alt="Our Vission"
						class="img img-responsive" width="168" height="168">
					<p class="text-center">Our goal is to increase the availability
						of safe, high-quality blood for patients across the country.
						Through continuous outreach, we aim to boost donor participation,
						ensuring that hospitals and healthcare facilities always have
						sufficient blood supply to meet emergencies and routine medical
						needs. By expanding our network of donors and partnering with
						local organizations, we strive to build a resilient system that
						saves lives and strengthens communities.</p>
				</div>
			</div>

			<div class="col">
				<div class="card">
					<h3 class="text-center red">Our Mission</h3>
					<img src="img/goal.png" alt="Our Vission"
						class="img img-responsive" width="168" height="168">
					<p class="text-center">Our mission is simple yet powerful: to
						unite people in the life-saving mission of blood donation. Blood
						Unity is dedicated to making blood donation easy, accessible, and
						meaningful. We are committed to educating the public about the
						importance of donating blood, supporting donation centers, and
						bridging the gap between donors and those in urgent need of
						transfusions. Together, we empower people to make a difference in
						the lives of others.</p>
				</div>
			</div>
		</div>

		<!-- end aboutus section -->
	</div>


	<%@include file="all_Component/footer.jsp"%>


</body>
</html>