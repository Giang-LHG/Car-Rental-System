<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/5/2024
  Time: 2:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personal Infor</title>
</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<section class="main-profile-content">
    <div class="container">
        <div class="dividers">
            <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item active" aria-current="page">
                        <a href="#" class="text-decoration-none"> My profile</a>
                    </li>
                </ol>
            </nav>
        </div>
        <div class="content">
            <div class="title"><h3>My Profile</h3></div>
            <div
                    class="btn-group ms-4"
                    role="group"
                    aria-label="Basic radio toggle button group"
            >
                <div class="personal-info">
                    <input
                            style="border: none"
                            type="radio"
                            class="btn-check"
                            name="btnradio"
                            id="btnradio1"
                            autocomplete="off"
                            checked
                    />
                    <label
                            class="border border-dark border-bottom-0 p-1"
                            for="btnradio1"
                    >Personal Information</label
                    >
                </div>

                <div class="security bg-dark-subtle">
                    <input
                            type="radio"
                            class="btn-check"
                            name="btnradio"
                            id="btnradio2"
                            autocomplete="off"
                    />
                    <label
                            class="border border-dark border-bottom-0 p-1 border-start-0"
                            for="btnradio2"
                    >security</label
                    >
                </div>
            </div>

            <div class="form-submit p-5 border">
                <form action="#" method="#">
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label
                                        for="fullName"
                                        class="form-label fw-bold"
                                >Full name</label
                                >
                                <input
                                        type="text"
                                        class="form-control"
                                        id="fullName"
                                />
                            </div>
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label
                                        for="dateOfBirth"
                                        class="form-label fw-bold"
                                >Date of birth</label
                                >
                                <input
                                        type="date"
                                        class="form-control"
                                        id="dateOfBirth"
                                        placeholder="/  /"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label
                                        for="phoneNumber"
                                        class="form-label fw-bold"
                                >Phone Number</label
                                >
                                <input
                                        type="text"
                                        class="form-control"
                                        id="phoneNumber"
                                />
                            </div>
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label
                                        for="email"
                                        class="form-label fw-bold"
                                >Email address</label
                                >
                                <input
                                        type="email"
                                        class="form-control"
                                        id="email"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label
                                        for="nationalID"
                                        class="form-label fw-bold"
                                >National ID No:</label
                                >
                                <input
                                        type="email"
                                        class="form-control"
                                        id="nationalID"
                                />
                            </div>
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label for="drivingLicence" class="form-label fw-bold"
                                >Driving licence</label
                                >
                                <input class="form-control" type="file" id="drivingLicence" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="col-md">
                                <div>
                                    <label for="location" class="form-label fw-bold"
                                    >Address</label
                                    >
                                    <div class="py-2">
                                        <select class="form-select" id="location">
                                            <option selected>Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>

                                    <div class="py-2">
                                        <select class="form-select" id="location1">
                                            <option selected>Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>

                                    <div class="py-2">
                                        <select class="form-select" id="location2">
                                            <option selected>Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>

                                    <div class="py-2">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="exampleFormControlInput1"
                                                placeholder="name@example.com"
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center">
                        <input type="reset" value="Discord" class="m-2 p-2" />
                        <input
                                type="submit"
                                value="Save"
                                class="m-2 p-2 bg-primary bg-gradient"
                        />
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
