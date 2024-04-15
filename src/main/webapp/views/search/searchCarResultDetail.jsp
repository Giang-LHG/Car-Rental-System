<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/8/2024
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Result</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/search/searchResultDetail.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section class="menu bg-secondary py-3">
    <div class="container">
        <div class="row text-light">
            <div>
                <div class="search bg-dark-subtle p-3">
                    <form action="<%=request.getContextPath()%>/search-car" method="get">
                        <div class="location mb-3">
                            <label for="location" class="form-label fw-bold"
                            >PICK-UP LOCATION</label
                            >
                            <input
                                    type="text"
                                    class="form-control"
                                    name="location"
                                    id="location"
                                    placeholder="Enter your location"
                            />
                        </div>

                        <div class="d-flex">
                            <div class="date mb-3 d-flex">
                                <div>
                                    <label for="pickup" class="form-label fw-bold"
                                    >PICK-UP DATE AND TIME</label
                                    >
                                    <input
                                            type="date"
                                            class="form-control"
                                            name="pickupday"
                                            id="pickup"
                                            placeholder="DD/MM/YYYY"
                                            required
                                    />
                                </div>
                                <div class="py-4 p-3 m-2 ">
                                    <input type="time" name="pickuptime" placeholder="HH/MM" class="rounded py-10"
                                           required>
                                </div>
                            </div>

                            <div class="date d-flex">
                                <div>
                                    <label for="dropoff" class="form-label fw-bold"
                                    >DROP-OFF DATE AND TIME</label
                                    >
                                    <input
                                            type="date"
                                            class="form-control"
                                            name="dropoffday"
                                            id="dropoff"
                                            placeholder="DD/MM/YYYY"
                                            required
                                    />
                                </div>
                                <div class="py-4 p-3 m-2">
                                    <input type="time" name="dropofftime" placeholder="HH/MM" class="rounded py-1">
                                </div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <input type="submit" value="Search" class="bg-primary" required/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="maincontent-botton">
    <!-- Where to find us? -->
    <div class="container">
        <h3 class="py-3 fw-bold">Search Results</h3>
        <div class="d-flex justify-content-between">
            <div class="msg">
                <p>There're cars that are avalible for you!</p>
            </div>
            <div class="button d-flex ">
                <div class="detail-result ">
                    <a href="#"><i class="fa-solid fa-table fs-4"></i></a>
                </div>
                <div class="list-result px-3">
                    <a href="#" onclick="change()"><i class="fa-solid fa-table-list fs-4 text-black"></i></a>
                </div>
                <div class="input-group mb-3">
                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                            aria-expanded="false">Dropdown
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>

                </div>
            </div>
        </div>

        <div class="list">
            <c:forEach items="${requestScope.listC}" var="i">
                <c:set var="id" value="${i.licensePlate}"/>
                <div class="car-details d-flex p-3 border border-black">
                    <img src="car-image.png" alt="Car Image">
                    <div>
                        <h3 class="fw-bold">${i.name}</h3>
                        <span>Rating:</span>
                        <p class="rating"> &#9733;&#9733;&#9733;&#9733;&#9733; (No ratings yet)</p>
                        <p>No. of rides: 0</p>
                        <p>Price: ${i.basePrice}/day</p>
                        <p>${i.address}</p>
                        <p class="status">Available</p>
                    </div>
                    <div class="action">
                        <a
                                style="text-decoration: none;background-color: #4CAF50;color:white"
                                type="button"
                                href="<%=request.getContextPath()%>/rent-a-car?licensePlate=${id}&action=rentCar"
                        >Rent now
                        </a>
                        <a style="text-decoration: none;background-color: #4CAF50;color:white"
                           type="button"
                           href="<%=request.getContextPath()%>/car-detail?licensePlate=${id}"
                        >View details</a>
                    </div>
                </div>
            </c:forEach>
            <div class="d-flex justify-content-end px-5 py-3">
                <c:forEach begin="1" end="5" var="i">
                    <a href="#" class="text-decoration-none p-1 bg-primary-subtle m-1">${i}</a>
                </c:forEach>
            </div>

        </div>

    </div>
</section>
<jsp:include page="../footer.jsp"></jsp:include>

<script>
    function change(carId) {
        window.location.href = "<%=request.getContextPath()%>/rent-a-car?licensePlate=" + carId;
    }
</script>

</body>
</html>
