<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/3/2024
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page As Customer</title>
</head>
<body>
<jsp:include page="../../../header.jsp"></jsp:include>
<section class="menu bg-secondary py-3">
  <div class="container">
    <div class="row text-light">
      <div class="col-md-5 text-center">
        <h3>Looking for a vehicle?</h3>
        <h3>You're at the right place</h3>
        <p>
          We have a large selection of locally owners cars avallable for you
          to choose from. Rental plans are customised to suit your needs
        </p>
        <p>
          With over 300 cars located nationwide we will have something for
          you
        </p>
      </div>
      <div class="col-md-7 border-start">
        <div class="search bg-dark-subtle p-3">
          <h4>Find the ideal car rental for you trip</h4>
          <form action="#" method="#">
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

            <div class="date mb-3 d-flex">
              <div>
                <label for="location" class="form-label fw-bold"
                >PICK-UP DATE AND TIME</label
                >
                <input
                        type="date"
                        class="form-control"
                        name="location"
                        id="location"
                        placeholder="DD/MM/YYYY"
                />
              </div>
              <div class="py-4 p-3 m-2">
                <select
                        class="form-select"
                        aria-label="Default select example"
                >
                  <option selected>Open this select menu</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
              </div>
            </div>

            <div class="date d-flex">
              <div>
                <label for="location" class="form-label fw-bold"
                >PICK-UP DATE AND TIME</label
                >
                <input
                        type="date"
                        class="form-control"
                        name="location"
                        id="location"
                        placeholder="DD/MM/YYYY"
                />
              </div>
              <div class="py-4 p-3 m-2">
                <select
                        class="form-select"
                        aria-label="Default select example"
                >
                  <option selected>Open this select menu</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
              </div>
            </div>
            <div class="d-flex justify-content-center">
              <input type="submit" value="Search" class="bg-primary" />
            </div>
          </form>
        </div>
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
<c:if test="${not empty requestScope.success}">
  <script>
    window.addEventListener("load",function(){
      alert("${requestScope.success}");
    });
  </script>
</c:if>
<jsp:include page="../../../footer.jsp"></jsp:include>
</body>
</html>
