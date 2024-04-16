<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>You're successfully booked ..</div>
		<div>Your booking number is: </div>
		<div>Our operator will contact you with further guidance about pickup</div>
		<div>
			<a href="<%=request.getContextPath()%>">Go to homepage</a>
			<a href="#">Book another car</a>
			<button name="btn-view" id="btn-view" class="btn-next">View booking</button>
		</div>
	</div>
</body>
<script>
</script>
</html>