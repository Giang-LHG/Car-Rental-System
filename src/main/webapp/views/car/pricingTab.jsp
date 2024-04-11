<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rent a Car</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    header {
      background-color: #333;
      color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    nav a {
      color: #fff;
      text-decoration: none;
      margin-right: 20px;
    }
    main {
      padding: 20px;
    }
    .car-details {
      display: flex;
      align-items: flex-start;
    }
    .car-details img {
      width: 200px;
      height: 150px;
      object-fit: cover;
      margin-right: 20px;
    }
    .car-info {
      flex-grow: 1;
    }
    .car-info h2 {
      margin-top: 0;
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
    .tab-content {
      border: 1px solid #ccc;
      padding: 20px;
    }
    footer {
      background-color: #f2f2f2;
      padding: 20px;
      text-align: center;
    }
    footer nav {
      display: flex;
      justify-content: center;
    }
    footer nav a {
      color: #333;
      text-decoration: none;
      margin-right: 20px;
    }
    footer nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      display: flex;
    }
    footer nav ul li {
      margin-right: 20px;
    }
    footer nav ul li a {
      color: #333;
      text-decoration: none;
    }
  </style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<main>
  <h1>Edit car details</h1>
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
    <li><a href="#">Details</a></li>
    <li><a href="#"class="active">Pricing</a></li>
  </ul>

  <div class="tab-content">
    <p>Base price: <span>900,000</span> VND/Day</p>
    <p>Required deposit: <span>1,000,000</span> VND</p>
    <p>Terms of use:</p>
    <ul>
      <li><input type="checkbox" checked> No smoking</li>
      <li><input type="checkbox"> No food in car</li>
      <li><input type="checkbox" checked> No pets</li>
      <li><input type="checkbox"> Other</li>
    </ul>
    <button>Discard</button>
    <button>Save</button>
  </div>
</main>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>