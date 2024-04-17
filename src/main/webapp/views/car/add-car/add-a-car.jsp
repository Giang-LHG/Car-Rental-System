<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/car/add-a-car.css">
</head>
<body>
	<jsp:include page="../../header.jsp"></jsp:include>
<!-- 	<div class="steps" style="display: flex; margin-bottom: 20px;"> -->
<!-- 	    <span style="padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f4f4f4; color: #333; margin-right: 10px;">Step 1: Basic</span> -->
<!-- 	    <span style="padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f4f4f4; color: #333; margin-right: 10px;">Step 2: Details</span> -->
<!-- 	    <span style="padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f4f4f4; color: #333; margin-right: 10px;">Step 3: Pricing</span> -->
<!-- 	    <span style="padding: 10px; border: 1px solid #4caf50; border-radius: 5px; background-color: #4caf50; color: #fff;">Step 4: Finish</span> -->
<!-- 	</div> -->
<h4>Add a car</h4>
	<div class="progress-bar">
		<div class="container">
			<ul style="flex-basis: 30%">
			 <li class="content progress-link current">
			   <div class="content" id="step-1">Step 1: Basic</div>
			 </li>
			 <li class="content progress-link"><div class="content" id="step-2">Step 2: Detail</div></li>
			 <li class="content progress-link"><div class="content" id="step-3">Step 3: Pricing</div></li>
			  <li class="content progress-link"><div class="content" id="step-4">Step 4: Finish</div></li>
			</ul>
		</div>
	</div>
	<button onclick="random()">Random</button>
	<div id="form-container">

	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>
	<script src="<%=request.getContextPath()%>/resources/js/car/add-a-car.js"></script>
</body>
</html>