<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<style>
    .rentalInterval {
        display: flex;
        gap: 20px;
    }
    .rentalInterval input{
        width: min-content;
    }
</style>
<div>
    <%--	<form action="payment-booking" method="post" id="payment-booking-form">--%>
    <div id="payment-booking-form">
        <h4>Please enter your rental's date</h4>
        <div class="rentalInterval">
            <label for="startDate">Start Date: </label>
            <input type="datetime-local" name="startDate" id="startDate" class="form-control">
            <label for="endDate">End Date: </label>
            <input type="datetime-local" name="endDate" id="endDate" class="form-control">
            <input type="hidden" name="customerId" id="customerId" value="${sessionScope.user.nationalId}">
        </div>
        <h4>Please select your payment method</h4>
        <div>
            <div>
                <input type="radio"  name="paymentMethod" class="paymentMethod" value="1" checked>
                <span>My wallet</span>
                <div>Current balance: <span></span></div>
                <div>Please go to My wallet to top-up an try again</div>
            </div>
            <div>
                <input type="radio" name="paymentMethod" value="1" class="paymentMethod">
                <span>Cash</span>
                <div>Our operator will contact you for further intruction</div>
            </div>
            <div>
                <input type="radio" name="paymentMethod" value="1" class="paymentMethod">
                <span>Bank transfer</span>
                <div>Current balance: <span></span></div>
                <div>Our operator will contact you for further intruction</div>
            </div>
        </div>
        <div>
            <button id="cancel" class="btn-cancel" onclick="backToStep1()">Cancel</button>
            <button id="btn-payment" class="btn-next" onclick="confirmRent()">Confirm payment</button>
        </div>
    </div>
</div>
<script>

</script>
</body>
<script src="<%=request.getContextPath()%>/resources/js/booking/booking-a-car.js"></script>
</html>