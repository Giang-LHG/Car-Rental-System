<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="head.html"></jsp:include>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css">
</head>
<body>
	<header class="d-flex bg-secondary">
		<div class="col-7 head-div head-title"><i class='fas fa-car-alt' style="font-size: 50px"></i><span> Rent a car today!</span></div>
		<div class="col-2 head-div head-about-us">ABOUT US</div>
		<div class="col-3 head-div head-dropdonwn">
			<div class="dropdown">
		    <button type="button" class="btn btn-basic dropdown-toggle" data-bs-toggle="dropdown">
		      <i class='fas fa-user-circle'></i><span> Welcome, ${sessionScope.username}</span>
		    </button>
		    <ul class="dropdown-menu">
		      <li><a class="dropdown-item" href="#">My Profile</a></li>
		      <li><a class="dropdown-item" href="#">My Bookings</a></li>
		      <li><a class="dropdown-item" href="#">My Wallet</a></li>
		      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth?action=logout" id="logout">Log out</a></li>
		    </ul>
		  	</div>
		</div>
	</header>
</body>
</html>