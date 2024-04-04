<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Rent a car today!</title>
    <jsp:include page="../head.html"></jsp:include>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }
        header a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }
        main {
            padding: 20px;
        }
        .breadcrumb {
            color: #666;
            font-size: 14px;
            margin-bottom: 10px;
        }
        .booking-list {
            display: flex;
            flex-direction: column;
        }
        .booking-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
        }
        .booking-item img {
            width: 200px;
            height: 150px;
            border: 1px solid #ccc;
            margin-right: 20px;
            position: relative;
        }
        .booking-item img::before {
            content: "<";
            position: absolute;
            top: 10px;
            left: 10px;
            font-size: 20px;
            color: #333;
        }
        .booking-item img::after {
            content: ">";
            position: absolute;
            bottom: 10px;
            right: 10px;
            font-size: 20px;
            color: #333;
        }
        .booking-item .booking-details {
            flex-grow: 1;
        }
        .booking-item .booking-details h3 {
            margin-top: 0;
        }
        .booking-item .booking-details p {
            margin: 5px 0;
        }
        .booking-item .booking-details button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .booking-item .booking-details .cancel-btn {
            background-color: #f44336;
        }
        .booking-item .booking-details .confirm-btn {
            background-color: #DADADA;
        }
        footer {
            background-color: #333;
            color: white;
            display: flex;
            justify-content: space-around;
            padding: 10px;
        }
    </style>
</head>
<body>



<jsp:include page="../header.jsp"></jsp:include>
<main>
    <div class="breadcrumb "><span class="text-primary">home</span> > My Bookings</div>
    <h1>My Bookings</h1>
    <div class="row">
        <div class="col-9">
            <p>You have 4 upcoming bookings</p>
        </div>
        <div class="col-3">
            <select class="form-select" aria-label="Default select example">
                <option selected>Open this select menu</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>
    </div>


    <div class="booking-list">
        <div class="booking-item">
            <div>
                <img src="car-image.png" alt="Car Image"/>
            </div>
            <div class="booking-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:00 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
                <p>Number of days: </p>
                <p>Base price: </p>
                <p>Total: </p>
                <p>Deposit: </p>
                <p>Booking No.: 0123456</p>
                <p>Booking status: <span style="color: green; font-weight: bold;">Confirmed</span></p>
                <button>View details</button>
                <button class="confirm-btn">Confirm pickup</button>
                <button class="cancel-btn">Cancel booking</button>
            </div>
        </div>
        <div class="booking-item">
            <div>
                <img src="car-image.png" alt="Car Image"/>
            </div>
            <div class="booking-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:00 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
                <p>Number of days: </p>
                <p>Base price: </p>
                <p>Total: </p>
                <p>Deposit: </p>
                <p>Booking No.: 0123456</p>
                <p>Booking status: <span style="color: yellow; font-weight: bold;">In-Progress</span></p>
                <button>View details</button>
                <button class="confirm-btn">Confirm pickup</button>
                <button class="cancel-btn">Cancel booking</button>
            </div>
        </div>
        <div class="booking-item">
            <div>
                <img src="car-image.png" alt="Car Image"/>
            </div>
            <div class="booking-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:00 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
                <p>Number of days: </p>
                <p>Base price: </p>
                <p>Total: </p>
                <p>Deposit: </p>
                <p>Booking No.: 0123456</p>
                <p>Booking status: <span style="color: red; font-weight: bold;">Pending deposit</span></p>
                <button>View details</button>
                <button class="confirm-btn">Confirm pickup</button>
                <button class="cancel-btn">Cancel booking</button>
            </div>
        </div>
        <div class="booking-item">
            <div>
                <img src="car-image.png" alt="Car Image"/>
            </div>
            <div class="booking-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:00 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
                <p>Number of days: </p>
                <p>Base price: </p>
                <p>Total: </p>
                <p>Deposit: </p>
                <p>Booking No.: 0123456</p>
                <p>Booking status: <span style="color: dodgerblue; font-weight: bold;">Completed</span></p>
                <button>View details</button>
                <button class="confirm-btn">Confirm pickup</button>
                <button class="cancel-btn">Cancel booking</button>
            </div>
        </div>
        <div class="booking-item">
            <div>
                <img src="car-image.png" alt="Car Image"/>
            </div>
            <div class="booking-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:00 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
                <p>Number of days: </p>
                <p>Base price: </p>
                <p>Total: </p>
                <p>Deposit: </p>
                <p>Booking No.: 0123456</p>
                <p>Booking status: <span style="color: gray; font-weight: bold;">Cancelled</span></p>
                <button>View details</button>
                <button class="confirm-btn">Confirm pickup</button>
                <button class="cancel-btn">Cancel booking</button>
            </div>
        </div>
        <div class="booking-item">
            <div>
                <img src="car-image.png" alt="Car Image"/>
            </div>
            <div class="booking-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:00 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
                <p>Number of days: </p>
                <p>Base price: </p>
                <p>Total: </p>
                <p>Deposit: </p>
                <p>Booking No.: 0123456</p>
                <p>Booking status: <span style="color: red; font-weight: bold;">Pending deposit</span></p>
                <button>View details</button>
                <button class="confirm-btn">Confirm pickup</button>
                <button class="cancel-btn">Cancel booking</button>
            </div>
        </div>
        <div class="btn-group mx-auto p-3" role="group" aria-label="First group" style="max-width: 50px">
            <button type="button" class="btn btn-outline-secondary">1</button>
            <button type="button" class="btn btn-outline-secondary">2</button>
            <button type="button" class="btn btn-outline-secondary">3</button>
            <button type="button" class="btn btn-outline-secondary">4</button>
        </div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>