<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood-Unity:About</title>
<%@include file="all_Component/allCss.jsp"%>
<style>
.size {
	padding: 80px 0px;
}

img {
	width: 300px;
	height: 300px;
}

h2 {
	color: #e74c3c;
}

.white {
	background-color: white;
}

p {
	font-size: 18px;
}

.right {
	float: right;
}

h1 {
	color: white;
}

.size {
	min-height: 0px;
	padding: 60px 0 40px 0;
}
</style>

</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container-fluid red-background size">
		<div class="row">
			<div class="col-md-6 offset-md-3 pt-3">
				<h1 class="text-center">About Us</h1>
				<hr class="white-bar">
			</div>
		</div>
	</div>
	<div class="container-fluid size">

		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img src="img/binoculars.png" alt="Our Vission"
						class="rounded float-left img-fluid">
				</div>
				<div class="col-md-6">
					<h2 class="text-center">Our Vission</h2>
					<hr class="red-bar">
					<p class="text-center">At Blood Unity, our vision is to create
						a world where no life is lost due to the lack of accessible blood.
						We aim to foster a society that is empowered by unity, where
						individuals come together to provide lifesaving support through
						blood donation. We envision a future where every patient in need
						can rely on an abundant and safe blood supply, bringing
						communities closer through the act of giving.</p>
					<p class="text-center">At Blood Unity, our vision is to create
						a world where no life is lost due to the lack of accessible blood.
						We aim to foster a society that is empowered by unity, where
						individuals come together to provide lifesaving support through
						blood donation. We envision a future where every patient in need
						can rely on an abundant and safe blood supply, bringing
						communities closer through the act of giving.</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid white size">
		<div class="container ">
			<div class="container">
				<div class="row ">
					<div class="col-md-6">
						<h2 class="text-center">Our Goal</h2>
						<hr class="red-bar">
						<p class="text-center">Our goal is to increase the
							availability of safe, high-quality blood for patients across the
							country. Through continuous outreach, we aim to boost donor
							participation, ensuring that hospitals and healthcare facilities
							always have sufficient blood supply to meet emergencies and
							routine medical needs. By expanding our network of donors and
							partnering with local organizations, we strive to build a
							resilient system that saves lives and strengthens communities.</p>
						<p class="text-center">Our goal is to increase the
							availability of safe, high-quality blood for patients across the
							country. Through continuous outreach, we aim to boost donor
							participation, ensuring that hospitals and healthcare facilities
							always have sufficient blood supply to meet emergencies and
							routine medical needs. By expanding our network of donors and
							partnering with local organizations, we strive to build a
							resilient system that saves lives and strengthens communities.</p>

					</div>
					<div>
						<img src="img/target.png" alt="Our Vission"
							class="rounded img-fluid float-right">
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid size">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img src="img/goal.png" alt="Our Vission"
						class="rounded float-left img-fluid">
				</div>
				<div class="col-md-6">
					<h2 class="text-center">Our Mission</h2>
					<hr class="red-bar">
					<p class="text-center">Our mission is simple yet powerful: to
						unite people in the life-saving mission of blood donation. Blood
						Unity is dedicated to making blood donation easy, accessible, and
						meaningful. We are committed to educating the public about the
						importance of donating blood, supporting donation centers, and
						bridging the gap between donors and those in urgent need of
						transfusions. Together, we empower people to make a difference in
						the lives of others.</p>
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
	</div>

	<%@include file="all_Component/footer.jsp"%>

</body>
</html>