<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
	<form>
		<h4>Please select your payment method</h4>
		<div>
			<div>
				<input type="radio" name="paymentMethod" value="">
				<span>My wallet</span>
				<div>Current balance: <span></span></div>
				<div>Please go to My wallet to top-up an try again</div>
			</div>
			<div>
				<input type="radio" name="paymentMethod" value="">
				<span>Cash</span>
				<div>Our operator will contact you for further intruction</div>
			</div>
			<div>
				<input type="radio" name="paymentMethod" value="">
				<span>Bank transfer</span>
				<div>Current balance: <span></span></div>
				<div>Our operator will contact you for further intruction</div>
			</div>
		</div>
		<div>
			<button id="cancel" class="btn-cancel">Cancel</button>
			<button type="submit" name="btn-payment" id="btn-payment" class="btn-next">Confirm payment</button>
		</div>
	</form>
	</div>
</body>
</html>