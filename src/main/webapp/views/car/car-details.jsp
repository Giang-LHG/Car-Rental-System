<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rent a car today!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }
        main {
            padding: 20px;
        }
        .car-details {
            display: flex;
        }
        .car-details img {
            width: 300px;
            height: 200px;
            border: 1px solid #ccc;
        }
        .car-details div {
            margin-left: 20px;
        }
        .car-details button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .car-details .rating {
            color: #ccc;
        }
        .car-details .status {
            color: green;
            font-weight: bold;
        }
        .tabbed-content {
            margin-top: 20px;
        }
        .tabbed-content ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        .tabbed-content ul li {
            background-color: #f1f1f1;
            padding: 10px 20px;
            cursor: pointer;
        }
        .tabbed-content ul li.active {
            background-color: #ccc;
        }
        .tabbed-content .tab-content {
            border: 1px solid #ccc;
            padding: 20px;
        }
    </style>
</head>
<body>

    <jsp:include page="../header.jsp"></jsp:include>

<main>
    <h1>Car Details</h1>
    <div class="car-details">
        <img src="car-image.png" alt="Car Image">
        <div>
            <h2>${Car.name}</h2>
            <input type="hidden" name="licensePlate" id="licensePlate" value="${Car.licensePlate}">
            <button>Rent now</button>
            <p class="rating">&#9733;&#9733;&#9733;&#9733;&#9733; (No ratings yet)</p>
            <p>No. of rides: ${rides}</p>
            <p>Price: ${Car.basePrice}VNĐ/day</p>
            <p>Locations: ${Car.address}</p>
            <p>Status: 
            	<c:if test="${status eq true }">Avaliable</c:if>
            	<c:if test="${status eq false }">Unavaliable</c:if>
            </p>
        </div>
    </div>
    <div class="tabbed-content" id="tabbed-content">
        <ul>
            <li class="tab active " id="basic-info-tab">Basic Information</li>
            <li class="tab" id="detail-tab">Details</li>
            <li class="tab" id="tou-tab">Terms of use</li>
        </ul>
        <div class="tab-content" id="tab-content">
        </div>
    </div>
</main>

<jsp:include page="../footer.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/resources/js/car/car-details.js"></script>
</body>
</html>