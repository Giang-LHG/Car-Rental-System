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
        .car-details {
            display: flex;
            align-items: flex-start;
        }
        .car-image {
            flex: 1;
            max-width: 300px;
            margin-right: 20px;
        }
        .car-info {
            flex: 2;
        }
        .car-image img {
            max-width: 100%;
        }
        .car-info-row {
            display: flex;
            margin-bottom: 10px;
        }
        .car-info-row div {
            flex: 1;
            margin-right: 10px;
        }
        .car-info-row div:last-child {
            margin-right: 0;
        }
        .car-info-row input[type="text"] {
            width: 100%;
            padding: 5px;
            box-sizing: border-box;
        }
        .car-info-row select {
            width: 100%;
            padding: 5px;
            box-sizing: border-box;
        }
        .car-features {
            margin-top: 20px;
        }
        .car-features div {
            display: inline-block;
            margin-right: 10px;
        }
        .car-gallery {
            display: flex;
            margin-top: 20px;
        }
        .car-gallery div {
            flex: 1;
            margin-right: 10px;
            max-width: 200px;
        }
        .car-gallery div:last-child {
            margin-right: 0;
        }
        .car-gallery img {
            max-width: 100%;
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


    </style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<main>
    <h2>Edit car details</h2>
    <div class="car-details">
        <img src="car-image.jpg" alt="Car Image">
        <div class="car-info">
            <h2>Nissan Navara El 2017</h2>
            <p>Ratings: &#9733;&#9733;&#9733;&#9733;&#9733; (No ratings yet)</p>
            <p>No. of rides: 0</p>
            <p>Price: 900k/day</p>
            <p>Location: Cau Giay, Hanoi</p>
            <p>Status: <span style="color: green;">Available</span></p>
        </div>
    </div>

        <ul class="tab-nav">
            <li><a href="#" >Basic information</a></li>
            <li><a href="#" class="active" >Details</a></li>
            <li><a href="#">Pricing</a></li>
        </ul>

            <div class="car-info-row">
                <div>
                    <h6>Mileage:</h6>
                    <input type="text" id="mileage" >
                </div>
                <br>
                <div>
                    <h6>Fuel consumption:</h6>
                    <input type="text" id="fuel" placeholder="">
                    <h6>liter/100 km</h6>
                </div>
            </div>

            <div class="car-info-row">
                <div>
                    <h6>Description:</h6>
                    <textarea  placeholder="Description of your vehicles" rows="6" cols="60"></textarea>
                </div>
            </div>


            <div class="car-info-row">
                <div>
                    <h6>Address:</h6>
                    <input type="text"  placeholder="Search for an address">
                </div>


            </div>

        <div class="car-info-row">
            <div>
                <select>
                    <option value="">City</option>
                    <option value="hanoi">Hanoi</option>
                    <option value="hcm">Ho Chi Minh</option>
                    <option value="danang">Da Nang</option>
                </select>
            </div>
        </div>



            <div class="car-info-row">
                <div>
                    <select id="distruct">
                        <option value="">Distruct</option>
                        <option value="vn">Vietnam</option>
                        <option value="th">Thailand</option>
                        <option value="sg">Singapore</option>
                    </select>
                </div>
            </div>

            <div class="car-info-row">
                <div>
                    <select id="wart">
                        <option value="">Wart</option>
                        <option value="vn">Vietnam</option>
                        <option value="th">Thailand</option>
                        <option value="sg">Singapore</option>
                    </select>
                </div>
            </div>

            <div class="car-info-row">
                <div>
                    <input type="text" placeholder="     ">
                </div>
            </div>

            <div class="car-features">
                <h6>Additional features:</h6>
                <div>
                    <input type="checkbox" id="bluetooth">
                    <label>Bluetooth</label>
                </div>
                <div>
                    <input type="checkbox" id="gps">
                    <label>GPS</label>
                </div>

                <div>
                    <input type="checkbox" id="camera">
                    <label>Camera</label>
                </div>

                <div>
                    <input type="checkbox" id="sunroof">
                    <label>Sunroof</label>
                </div>

                <div>
                    <input type="checkbox" id="childseat">
                    <label>Child Seat</label>
                </div>
                <div>
                    <input type="checkbox" id="childlock">
                    <label>Child Lock</label>
                </div>

                <div>
                    <input type="checkbox" id="dvd">
                    <label>DVD</label>
                </div>
                <div>
                    <input type="checkbox" id="usb">
                    <label>USB</label>
                </div>
            </div>



    <h6>Images</h6>
    <div class="car-info-row">
        <div>
            <img src="placeholder.jpg" alt="Gallery Image">
        </div>
        <div>
            <img src="placeholder.jpg" alt="Gallery Image">
        </div>
    </div>

    <div class="car-info-row">
        <div>
            <img src="placeholder.jpg" alt="Gallery Image">
        </div>
        <div>
            <img src="placeholder.jpg" alt="Gallery Image">
        </div>
    </div>
    <p>Please include full 4 images of your vehicles </p>
    <p>File type jpg,png,psd,gif</p>


    <div class="car-info-row">
        <button>Discard</button>
        <button>Save</button>
    </div>

</main>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>