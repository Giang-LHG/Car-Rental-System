<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Booking Details</h1>
		<div class="booking-details-info">
			<div class="col-6 booking-image">
				<img src="#">
			</div>
			<div class="col-6 details-content">
				<div class="details-text">
					<h2>Nissan ..</h2>
					<div>
						From:..
						To:..
						Number of days:..
						Base price:
						Total:
						Deposit:
						Booking No.
						Booking status: 
					</div>
				</div>
				<div class="details-button">
					<button class="btn btn-primary" id="btn-view-detail">View Detail</button>
					<button class="btn " id="btn-confirm">Confirm Pick-up</button>
					<button class="btn btn-danger" id="btn-cancel-booking">Cancel booking</button>
				</div>
			</div>
		</div>
		<div></div>
		<div class="booking-details-content">
			<div class="content-select-button">
				<div class="border border-dark border-bottom-0" id="booking-information">Booking information</div>
				<div class="border border-dark border-bottom-0" id="car-information">Car information</div>
				<div class="border border-dark border-bottom-0" id="payment-information">Payment information</div>
			</div>
			<div id="content"></div>
		</div>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>