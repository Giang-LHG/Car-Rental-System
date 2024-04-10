<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
            <table>
                <tr>
                    <th>License plate: ${Car.licensePlate}</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Brand name: ${Car.brand.name}</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Model: ${Car.model.name}</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Production year: ${Car.productionYear}</th>
                    <td></td>
                </tr>
                <tr>
                    <th>No. of seats: ${Car.numberOfSeat.name}</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Transmission:
	                    <c:if test="${Car.transmissionType eq false }">manual</c:if>
	                    <c:if test="${Car.transmissionType eq true }">auto</c:if>
                    </th>
                    <td></td>
                </tr>
                <tr>
                    <th>Fuel:
	                    <c:if test="${Car.fuelType eq false }">gasoline </c:if>
	                    <c:if test="${Car.fuelType eq true }">diesel</c:if></th>
                    <td></td>
                </tr>
            </table>
	</div>
</body>
</html>