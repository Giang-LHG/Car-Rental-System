<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/2/2024
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>home</title>
    <jsp:include page="head.html"></jsp:include>
</head>
<body>
<section class="header bg-secondary border-bottom">
    <!-- why us -->
    <div class="container py-3">
        <div class="row">
            <div class="col-md-7">
                <a href="#" class="text-decoration-none"
                ><i class="fa-solid fa-car text-light fs-4"></i
                ><strong class="text-light ms-2 fs-3"
                >Rent a car today!</strong
                ></a
                >
            </div>
            <div class="col-md-2 border-end border-start pt-2">
                <a href="#" class="text-decoration-none">
                    <strong class="text-light">ABOUT US</strong></a
                >
            </div>
            <div class="col-md-3 pt-2">
                <div class="row">
                    <div class="col">
                        <a href="#" class="text-decoration-none"
                        ><i class="fa-solid fa-user text-light"></i
                        ><strong class="text-light ms-1">SIGN UP</strong></a
                        >
                    </div>
                    <div class="col border-start">
                        <a href="${pageContext.request.contextPath}/auth?action=login" class="text-decoration-none"
                        ><strong class="text-light">LOG IN</strong></a
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- What people say -->
    <div class="container bg-secondary-subtle"></div>
</section>
<section class="menu bg-secondary py-3">
    <div class="container">
        <div class="row text-light">
            <div class="col-md-7 text-center">
                <h3>Looking for a vehicle?</h3>
                <h3>You're at the right place</h3>
                <p>choose between 100s private car for rent at realy low price</p>
                <button class="bg-primary text-light p-2">
                    Find a rentalcar near you
                </button>
            </div>
            <div class="col-md-5 border-start text-center">
                <h3>Looking for a vehicle?</h3>
                <h3>You're at the right place</h3>
                <p>choose between 100s private car for rent at realy low price</p>
                <button class="bg-primary text-light p-2">
                    Find a rentalcar near you
                </button>
            </div>
        </div>
    </div>
</section>
<section class="maincontent-top py-3">
    <div class="container">
        <div class="row">
            <h3>Why us?</h3>
            <!-- col-1 -->
            <div class="col text-center">
                <br />
                <div class="icon">
                    <a href="#" class="text-decoration border rounded-circle p-3">
                        <i class="fa-solid fa-money-bill text-black fs-3"></i
                        ></a>
                </div>
                <div class="info border">
                    <h3 class="py-4">Save money</h3>
                    <p>
                        We have no setup of registration. you are only changed went you
                        rent a car so get start for FREE!
                    </p>
                </div>
            </div>
            <!-- col-2 -->
            <div class="col text-center">
                <br />
                <div class="icon">
                    <a href="#" class="text-decoration border rounded-circle p-3">
                        <i class="fa-solid fa-person text-black fs-3"></i
                        ></a>
                </div>
                <div class="info border">
                    <h3 class="py-4">Convienient</h3>
                    <p>
                        We have no setup of registration. you are only changed went you
                        rent a car so get start for FREE!
                    </p>
                </div>
            </div>
            <!-- col-3 -->
            <div class="col text-center">
                <br />
                <div class="icon">
                    <a href="#" class="text-decoration border rounded-circle p-3">
                        <i class="fa-solid fa-gavel text-black fs-3"></i>
                        ></a
                    >
                </div>
                <div class="info border">
                    <h3 class="py-4">Legal and insurance</h3>
                    <p>
                        We have no setup of registration. you are only changed went you
                        rent a car so get start for FREE!
                    </p>
                </div>
            </div>
            <!-- col-4 -->
            <div class="col text-center">
                <br />
                <div class="icon">
                    <a href="#" class="text-decoration border rounded-circle p-3">
                        <i class="fa-solid fa-headphones-simple text-black fs-3"></i>
                    </a>
                </div>
                <div class="info border">
                    <h3 class="py-4">24/7 support</h3>
                    <p>
                        We have no setup of registration. you are only changed went you
                        rent a car so get start for FREE!
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="maincontent-between bg-secondary-subtle">
    <!-- What people say -->
    <div class="container">
        <h3 class="py-3">What people say?</h3>
        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="col-md-1 py-2">
                        <a href="#" class="text-decoration-none">
                            <i class="fa-solid fa-user fs-1 text-black"></i
                            ></a>
                    </div>
                    <div class="col-md-11">
                        <p class="text-black">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Corporis enim dignissimos, deleniti dolorum aliquam sint
                            architecto blanditiis, provident repellendus debitis modi
                            facilis, sequi quasi reprehenderit animi. Qui sint nesciunt
                            aliquid?
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col-md-1 py-2">
                        <a href="#" class="text-decoration-none">
                            <i class="fa-solid fa-user fs-1 text-black"></i
                            ></a>
                    </div>
                    <div class="col-md-11">
                        <p class="text-black">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Corporis enim dignissimos, deleniti dolorum aliquam sint
                            architecto blanditiis, provident repellendus debitis modi
                            facilis, sequi quasi reprehenderit animi. Qui sint nesciunt
                            aliquid?
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="col-md-1 py-2">
                        <a href="#" class="text-decoration-none">
                            <i class="fa-solid fa-user fs-1 text-black"></i
                            ></a>
                    </div>
                    <div class="col-md-11">
                        <p class="text-black">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Corporis enim dignissimos, deleniti dolorum aliquam sint
                            architecto blanditiis, provident repellendus debitis modi
                            facilis, sequi quasi reprehenderit animi. Qui sint nesciunt
                            aliquid?
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col-md-1 py-2">
                        <a href="#" class="text-decoration-none">
                            <i class="fa-solid fa-user fs-1 text-black"></i
                            ></a>
                    </div>
                    <div class="col-md-11">
                        <p class="text-black">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Corporis enim dignissimos, deleniti dolorum aliquam sint
                            architecto blanditiis, provident repellendus debitis modi
                            facilis, sequi quasi reprehenderit animi. Qui sint nesciunt
                            aliquid?
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="maincontent-botton">
    <!-- Where to find us? -->
    <div class="container">
        <h3>Where to find us?</h3>
        <div class="row">
            <div class="col-md-4">
                <div class="card bg-secondary" style="width: 18rem">
                    <img src="..." class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h4 class="card-title text-light">Hanoi</h4>
                        <p class="card-text text-light">
                            Some quick example text to build on the card title and make up
                            the bulk of the card's content.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-secondary" style="width: 18rem">
                    <img src="..." class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h4 class="card-title text-light">Ho Chi Minh city</h4>
                        <p class="card-text text-light">
                            Some quick example text to build on the card title and make up
                            the bulk of the card's content.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-secondary" style="width: 18rem">
                    <img src="..." class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h4 class="card-title text-light">Da Nang - Hoi An</h4>
                        <p class="card-text text-light">
                            Some quick example text to build on the card title and make up
                            the bulk of the card's content.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row py-4">
            <div class="col-md-4">
                <div class="card bg-secondary" style="width: 18rem">
                    <img src="..." class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h4 class="card-title text-light">Nha Trang</h4>
                        <p class="card-text text-light">
                            Some quick example text to build on the card title and make up
                            the bulk of the card's content.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-secondary" style="width: 18rem">
                    <img src="..." class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h4 class="card-title text-light">Da lat</h4>
                        <p class="card-text text-light">
                            Some quick example text to build on the card title and make up
                            the bulk of the card's content.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-secondary" style="width: 18rem">
                    <img src="..." class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h4 class="card-title text-light">Quang Ninh</h4>
                        <p class="card-text text-light">
                            Some quick example text to build on the card title and make up
                            the bulk of the card's content.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
