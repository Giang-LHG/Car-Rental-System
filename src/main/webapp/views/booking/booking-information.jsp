<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="booking-information-form">
	<div class="renter-information">
		<h3>Rental's information</h3>
		<table>
			<tr>
				<td>
					<div>
						<label for="fullNameRenter">Full name: *</label>
						<input type="text" name="fullNameRenter" class="form-control" id="fullNameRenter" value="${sessionScope.username}" readonly>
					</div>
				</td>
				<td>
					<div>
						<label for="dateOfBirthRenter">Date of birth: *</label>
						<input type="date" name="dateOfBirthRenter" class="form-control" id="dateOfBirthRenter" value="${sessionScope.user.dateOfBirth}" readonly>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div>
						<label for="phoneNumberRenter">Phone number: *</label>
						<input type="text" name="phoneNumberRenter" class="form-control" id="phoneNumberRenter" value="${sessionScope.user.phone}" readonly>
					</div>
				</td>
				<td>
					<div>
						<label for="EmailRenter">Email address: *</label>
						<input type="text" name="EmailRenter" class="form-control" id="EmailRenter" value="${sessionScope.user.email}" readonly>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div>
						<label for="nationalIdRenter">National ID No: *</label>
						<input type="text" name="nationalIdRenter" class="form-control" id="nationalIdRenter" value="${sessionScope.user.nationalId}">
					</div>
				</td>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="drivingLicenseRenter">Driving license: *</label>--%>
<%--						<input type="file" name="drivingLicenseRenter" class="form-control" id="drivingLicenseRenter">--%>
<%--					</div>--%>
<%--				</td>--%>
			</tr>
		</table>
		<div>
			<label for="addressRenter">Address: *</label>
			<textarea rows="1" name="addressRenter" class="form-control" id="addressRenter" readonly>${sessionScope.user.address}</textarea>
		</div>
	</div>
<%--	<div class="driver-information">--%>
<%--		<h3>Driver's information</h3>--%>
<%--		<input type="checkbox" name="different">Different than Renter's information--%>
<%--		<table>--%>
<%--			<tr>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="fullNameDriver">Full name: *</label>--%>
<%--						<input type="text" name="fullNameDriver" class="form-control" id="fullNameDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="dateOfBirthDriver">Date of birth: *</label>--%>
<%--						<input type="date" name="dateOfBirthDriver" class="form-control" id="dateOfBirthDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--			<tr>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="phoneNumberDriver">Phone number: *</label>--%>
<%--						<input type="text" name="phoneNumberDriver" class="form-control" id="phoneNumberDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="EmailDriver">Email address: *</label>--%>
<%--						<input type="text" name="EmailDriver" class="form-control" id="EmailDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--			<tr>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="nationalIdDriver">National ID No: *</label>--%>
<%--						<input type="text" name="nationalIdDriver" class="form-control" id="nationalIdDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="drivingLicenseDriver">Driving license: *</label>--%>
<%--						<input type="file" name="drivingLicenseDriver" class="form-control" id="drivingLicenseDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--			<tr>--%>
<%--				<td>--%>
<%--					<div>--%>
<%--						<label for="addressDriver">Address: *</label>--%>
<%--						<input type="text" name="addressDriver" class="form-control" id="addressDriver">--%>
<%--					</div>--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--		</table>--%>
<%--		</div>--%>
		<div>
			<button id="cancel" class="btn-cancel" >Cancel</button>
			<button type="button" name="next" id="btn-next"  class="btn-next">Next</button>
		</div>
</form>
</body>
</html>