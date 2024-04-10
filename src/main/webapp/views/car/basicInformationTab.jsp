<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rent a Car Today!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin-left: 10px;
        }
        main {
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {

        }
        .car-details {
            display: flex;
        }
        .tab-nav {
            list-style-type: none;
            padding: 0;
            margin: 20px 0;
            display: flex;
            border-bottom: 1px solid #ccc;
        }
        .tab-nav li {
            margin-right: 10px;
        }
        .tab-nav li a {
            text-decoration: none;
            color: #333;
            padding: 5px 10px;
            border: 1px solid #ccc;
            border-bottom: none;
        }
        .tab-nav li a.active {
            background-color: #333;
            color: #fff;
        }
        .car-image {
            flex: 1;
        }
        .car-info {
            flex: 1;
            padding-left: 20px;
        }
        .nav-tabs {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            border-bottom: 1px solid #ddd;
        }
        .nav-tabs li {
            float: left;
        }
        .nav-tabs li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .nav-tabs li a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<main>
    <h2>Edit car details</h2>
    <div class="car-details">
        <div class="car-image">
            <img src="placeholder.jpg" alt="Car Image" style="max-width: 100%;">
        </div>
        <div class="car-info">
            <h3>Nissan Navara El 2017</h3>
            <p>Ratings: &#9733;&#9733;&#9733;&#9733;&#9733; (no ratings yet)</p>
            <p>No. of rides: 0</p>
            <p>Price: 900k/day</p>
            <p>Location: Cau Giay, Hanoi</p>
            <p>
                Status:
                <select>
                    <option>Available</option>
                    <option>Unavailable</option>
                </select>
            </p>

        </div>
    </div>


        <ul class="tab-nav">
            <li><a href="#" class="active">Basic information</a></li>
            <li><a href="#">Details</a></li>
            <li><a href="#">Pricing</a></li>
        </ul>


        <div>
            <table>
                <tr>
                    <th>License plate:</th>
                    <th>Deposit:</th>
                </tr>

                <tr>
                    <th>Brand name:</th>
                    <th>Color:</th>
                </tr>

                <tr>
                    <th>Production year:</th>
                    <th>Model:</th>
                </tr>

                <tr>
                    <th>Transmission:</th>
                    <th>No. of seats:</th>
                </tr>

                <tr>
                    <th>Documents:</th>
                    <th>Fuel:</th>
                </tr>


            </table>

            <table border="1">
                <tr>
                    <th>No.</th>
                    <th>Name</th>
                    <th>Note</th>
                    <th>File</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Registration paper</td>
                    <td>Verified</td>
                    <td><a href="#">File/PDF</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Certificate of inspection</td>
                    <td>Verified</td>
                    <td><a href="#">File/PDF</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Insurance</td>
                    <td>Not available</td>
                    <td>Not available</td>
                </tr>
            </table>
        </div>
        <p>Note: Please contact us if you need to update your car's basic information</p>

</main>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>