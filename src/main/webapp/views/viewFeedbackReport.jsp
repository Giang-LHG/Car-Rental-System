<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent a car today!</title>
    <jsp:include page="head.html"></jsp:include>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }

        nav a:hover {
            text-decoration: underline;
        }

        main {
            padding: 20px;
        }

        h1, h2, h3 {
            margin-top: 0;
        }

        .user-report {
            margin-bottom: 30px;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }

        .user-info {
            display: flex;
            align-items: center;
            justify-content: space-between; /* Điều chỉnh cho các phần tử con cách xa nhau */
            margin-bottom: 10px;
        }

        .user-info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .rating {
            font-size: 24px;
            margin: 0; /* Xóa khoảng cách top và bottom */
        }

        .rating-details {
            margin-bottom: 10px;
        }

        .car-info {
            display: flex;
            margin-top: 20px;
        }

        .car-info h3 {
            margin-top: 0;
        }

        .car-info img {
            width: 200px;
            height: auto;
            margin-right: 20px;
        }

        .car-details {
            flex: 1;
        }

        .pagination {
            margin-top: 20px;
        }

        .pagination a {
            color: #333;
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid #ccc;
            margin-right: 5px;
        }

        .pagination a.active {
            background-color: #333;
            color: #fff;
            border-color: #333;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        footer nav {
            margin-bottom: 10px;
        }

        footer nav a {
            color: #fff;
            text-decoration: none;
        }

        footer nav a:hover {
            text-decoration: underline;
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
    <h1>My Reports</h1>
    <nav>
        <a href="#">Sales Reports</a>
        <a href="#">Search by Report</a>
    </nav>

    <h2>Average Ratings</h2>
    <p class="rating">&#9733;&#9733;&#9733;&#9733;&#9734; 4.25</p>
    <p>Details:</p>
    <div class="rating-details">
        <span class="rating-count">5 stars (150)</span>
        <span class="rating-count">4 stars (94)</span>
        <span class="rating-count">3 stars (64)</span>
        <span class="rating-count">2 stars (8)</span>
        <span class="rating-count">1 star (0)</span>
    </div>

    <div class="user-report">
        <div class="user-info">
            <img src="user-icon.png" alt="User Icon">
            <span>User 1234</span>
            <div>
                <p class="rating">&#9733;&#9733;&#9733;&#9733;&#9734;</p>
                <p>14/02/2023 09:30</p>
            </div>
        </div>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maecenas vehicula placerat faucibus. Sed convallis tempus rhoncus. Sed vel dapibus est.</p>
        <div class="car-info">
            <img src="car-image.png" alt="Car Image">
            <div class="car-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:30 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
            </div>
        </div>
    </div>
    <div class="user-report">
        <div class="user-info">
            <img src="user-icon.png" alt="User Icon">
            <span>User 1234</span>

            <div>
                <p class="rating">&#9733;&#9733;&#9733;&#9733;&#9734;</p>
                <p>14/02/2023 09:30</p>
            </div>
        </div>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maecenas vehicula placerat faucibus. Sed convallis tempus rhoncus. Sed vel dapibus est.</p>
        <div class="car-info">
            <img src="car-image.png" alt="Car Image">
            <div class="car-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:30 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
            </div>
        </div>
    </div>
    <div class="user-report">
        <div class="user-info">
            <img src="user-icon.png" alt="User Icon">
            <span>User 1234</span>
            <div>
                <p class="rating">&#9733;&#9733;&#9733;&#9733;&#9734;</p>
                <p>14/02/2023 09:30</p>
            </div>
        </div>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maecenas vehicula placerat faucibus. Sed convallis tempus rhoncus. Sed vel dapibus est.</p>
        <div class="car-info">
            <img src="car-image.png" alt="Car Image">
            <div class="car-details">
                <h3>Nissan Navara El 2017</h3>
                <p>From: 13/02/2022 - 12:30 PM</p>
                <p>To: 23/02/2022 - 14:00 PM</p>
            </div>
        </div>
    </div>

    <!-- Add more user reports here -->

    <div class="pagination">
        <a href="#">&laquo;</a>
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">&raquo;</a>
    </div>
</main>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
