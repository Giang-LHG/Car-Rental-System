<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rent a car today!</title>
    <jsp:include page="../head.html"></jsp:include>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        main {
            padding: 20px;
        }
    </style>
</head>
<body>

        <div >
            <p>Mileage: ${Car.mileage}</p>
            <p>Fuel consumption: ${Car.fuelConsumption} liter/100 km</p>
            <p>Address: ${Car.address}</p>
<!--             <p>Note: Full address will be available after you've paid the deposit to rent</p> -->
            <p>Description:</p>
            <p>${Car.descriptions}</p>
            <div>
                <p>Additional functions:</p>
                <c:forEach var="item" items="${listFunctions}">
	                <div>
	                	<c:set var="check" value="false"></c:set>
	                	<c:forEach var="function" items="${functionsOfCar}">
	                		<c:if test="${function.id==item.id}">
	                			<c:set var="check" value="true"></c:set>
	                		</c:if>
	                	</c:forEach>
	                	<c:if test="${check eq true}">
	                    	<input type="checkbox" name="function" value="${item.id}" checked disabled="disabled"/>${item.name }
	                    </c:if>
	                	<c:if test="${check eq false}">
	                    	<input type="checkbox" name="function" value="${item.id}" disabled="disabled"/>${item.name }
	                    </c:if>
	                </div>
                </c:forEach>
                
            </div>
        </div>

</body>
</html>