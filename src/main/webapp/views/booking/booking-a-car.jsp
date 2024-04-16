<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Book a car</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/booking/booking-a-car.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="booking-details"></div>
	<div class="progress-bar">
		<div class="container">
			<ul style="flex-basis: 30%">
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
			<div>Name: ${requestScope.car.name}</div>
			<div>Rating:</div>
			<div>No.of rides: ${requestScope.rides}</div>
			<div>Price: ${requestScope.car.basePrice} $</div>
			<div>Locations: ${requestScope.car.address}</div>
			<div>Status:
				<c:if test="${requestScope.status eq true }">Avaliable</c:if>
				<c:if test="${requestScope.status eq false }">Unavaliable</c:if>
			</div>
			<input type="hidden" name="licensePlate" id="licensePlate" value="${requestScope.car.licensePlate}">
		</div>
		<div class="col-6 booking-info border border-dark">
			<div>Booking summary</div>
			<div></div>
		</div>
	</div>
	<div class="step-info border border-dark" id="step-info"></div>
	<script src="<%=request.getContextPath()%>/resources/js/booking/booking-a-car.js"></script>
</body>
</html>