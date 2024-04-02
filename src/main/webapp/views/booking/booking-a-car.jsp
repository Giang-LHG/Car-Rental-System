<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Book a car</title>
	<jsp:include page="../head.html" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/booking/booking-a-car.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="booking-details"></div>
	<div class="progress-bar">
		<div class="container">
			<ul>
			 <li class="content progress-link current">
			   <div class="content" id="step-1">Step 1: Booking Information</div>
			 </li>
			 <li class="content progress-link"><div class="content" id="step-2">Step 2: Payment</div></li>
			  <li class="content progress-link"><div class="content" id="step-3">Step 3: Finish</div></li>
			</ul>
		</div>
	</div>
	<div class="booking-info d-flex">
		<div class="col-6 car-info border border-dark">
			<div><img src="#"></div>
			<div>Nissan Navara El 2017</div>
			<div>Rating:
			</div>
			<div>No.of rides:</div>
			<div>Price:</div>
			<div>Locations:</div>
			<div>Status:</div>
		</div>
		<div class="col-6 booking-info border border-dark">
			<div>Booking summary</div>
			<div></div>
		</div>
	</div>
	<div class="step-info border border-dark" id="step-info"></div>
	<script src="../../resources/js/booking/booking-a-car.js"></script>
</body>
</html>