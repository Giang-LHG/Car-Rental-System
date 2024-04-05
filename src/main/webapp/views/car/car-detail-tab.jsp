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
        main {
            padding: 20px;
        }
    </style>
</head>
<body>

        <div >
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

</body>
</html>