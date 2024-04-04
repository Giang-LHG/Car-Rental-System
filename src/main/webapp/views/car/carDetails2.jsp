<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        header {
            background-color: #333;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
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
<section class="header bg-secondary border-bottom">
    <!-- why us -->
    <div class="container py-3">
        <div class="row">
            <div class="col-md-7">
                <a href="#" class="text-decoration-none">
                    <i class="fa-solid fa-car text-light fs-4"></i>
                    <strong class="text-light ms-2 fs-3">Rent a car today!</strong>
                </a>
            </div>
            <div class="col-md-2 border-end border-start pt-2">
                <a href="#" class="text-decoration-none">
                    <strong class="text-light">ABOUT US</strong>
                </a>
            </div>
            <div class="col-md-3 pt-2">
                <div class="row">
                    <div class="col">
                        <a href="#" class="text-decoration-none">
                            <i class="fa-solid fa-user text-light"></i>
                            <strong class="text-light ms-1">SIGN UP</strong>
                        </a>
                    </div>
                    <div class="col border-start">
                        <a href="#" class="text-decoration-none">
                            <strong class="text-light">LOG IN</strong>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- What people say -->
    <div class="container bg-secondary-subtle"></div>
</section>

<main>
    <h1>Car Details</h1>
    <div class="car-details">
        <img src="car-image.png" alt="Car Image">
        <div>
            <h2>Nissan Navara El 2017</h2>
            <button>Rent now</button>
            <p class="rating">&#9733;&#9733;&#9733;&#9733;&#9733; (No ratings yet)</p>
            <p>No. of rides: 0</p>
            <p>Price: 900k/day</p>
            <p>Locations: Cau Giay, Hanoi</p>
            <p class="status">Available</p>
        </div>
    </div>
    <div class="tabbed-content">
        <ul>
            <li>Basic Information</li>
            <li class="active">Details</li>
            <li>Terms of use</li>
        </ul>
        <div class="tab-content">
            <p>Base price: <input type="text" value="900,000"/> VND/Day</p>
            <p>Required deposit: <input type="text" value="15,000,000"/> VND</p>
            <div>
                <p>Terms of use:</p>
                <div>
                    <input type="checkbox" id="no-smoking" checked/>
                    <label for="no-smoking">No smoking</label>
                </div>
                <div>
                    <input type="checkbox" id="no-pet" checked/>
                    <label for="no-pet">No pet</label>
                </div>
                <div>
                    <input type="checkbox" id="no-food"/>
                    <label for="no-food">No food in car</label>
                </div>
                <div>
                    <input type="checkbox" id="other"/>
                    <label for="other">Other</label>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <p>Mileage:</p>
            <p>Fuel consumption: 18 liter/100 km</p>
            <p>Address:</p>
            <p>Note: Full address will be available after you've paid the deposit to rent</p>
            <p>Description:</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            <div>
                <p>Additional functions:</p>
                <div>
                    <input type="checkbox" id="bluetooth" checked />
                    <label for="bluetooth">Bluetooth</label>
                </div>
                <div>
                    <input type="checkbox" id="gps" />
                    <label for="gps">GPS</label>
                </div>
                <div>
                    <input type="checkbox" id="camera" />
                    <label for="camera">Camera</label>
                </div>
                <div>
                    <input type="checkbox" id="sunroof" checked />
                    <label for="sunroof">Sun roof</label>
                </div>
                <div>
                    <input type="checkbox" id="child-lock" checked />
                    <label for="child-lock">Child lock</label>
                </div>
                <div>
                    <input type="checkbox" id="child-seat" checked />
                    <label for="child-seat">Child seat</label>
                </div>
                <div>
                    <input type="checkbox" id="dvd" />
                    <label for="dvd">DVD</label>
                </div>
                <div>
                    <input type="checkbox" id="usb" />
                    <label for="usb">USB</label>
                </div>
            </div>
        </div>

    </div>
</main>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>