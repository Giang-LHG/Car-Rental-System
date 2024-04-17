<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/3/2024
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home Page As CarOwner</title>
</head>
<body>
<jsp:include page="../../../header.jsp"></jsp:include>
<section class="menu bg-secondary-subtle m-1">
    <div class="container">
        <h3>Have a car for rent? Don't miss out of your benefit</h3>
        <div class="row">
            <div class="col">
                <a href="#" class="text-decoration-none"
                ><i class="fa-regular fa-money-bill-1 text-black fs-4"></i
                ><strong class="text-black px-2 fs-5"
                >How the insurase words</strong
                ></a
                >
                <p class="py-3">
                    from the munite you hand the keys over still the second you get
                    them back you are coverd. your private insuarance is not affected
                </p>
            </div>
            <div class="col">
                <a href="#" class="text-decoration-none">
                    <i class="fa-solid fa-shield text-black fs-4"></i>
                    <strong class="text-black px-2 fs-5"
                    >It's complate free</strong
                    ></a
                >
                <p class="py-3">
                    from the munite you hand the keys over still the second you get
                    them back you are coverd. your private insuarance is not affected
                </p>
            </div>
            <div class="col">
                <a href="#" class="text-decoration-none">
                    <i class="fa-regular fa-circle-check text-black fs-4"></i>
                    <strong class="text-black px-2 fs-5"
                    >You decide the price</strong
                    ></a
                >
                <p class="py-3">
                    from the munite you hand the keys over still the second you get
                    them back you are coverd. your private insuarance is not affected
                </p>
            </div>
        </div>

        <div class="row py-3">
            <div class="col-md-4">
                <a href="#" class="text-decoration-none">
                    <i class="fa-solid fa-car text-black fs-4"></i>
                    <strong class="text-black px-2 fs-5"
                    >Haning over your vehicle</strong
                    ></a
                >
                <p class="py-3">
                    from the munite you hand the keys over still the second you get
                    them back you are coverd. your private insuarance is not affected
                </p>
            </div>
            <div class="col-md-4">
                <a href="#" class="text-decoration-none">
                    <i class="fa-solid fa-triangle-exclamation text-black fs-4"></i>
                    <strong class="text-black px-2 fs-5">You are in change</strong></a
                >
                <p class="py-3">
                    from the munite you hand the keys over still the second you get
                    them back you are coverd. your private insuarance is not affected
                </p>
            </div>
            <div class="col-md-4">
                <a href="#" class="text-decoration-none">
                    <i class="fa-solid fa-credit-card text-black fs-4"></i>
                    <strong class="text-black px-2 fs-5">Set Payment</strong></a
                >
                <p class="py-3">
                    from the munite you hand the keys over still the second you get
                    them back you are coverd. your private insuarance is not affected
                </p>
            </div>
        </div>
    </div>
</section>
<section class="maincontent m-4">
    <div class="container">
        <h3 class="p-3">Make money on your car right away</h3>
        <div class="list-car d-flex justify-content-center">
            <a href="${pageContext.request.contextPath}/list-carowner?id=${sessionScope.user.nationalId}" class="px-5 py-2 bg-info">
                List Your Car Today
            </a>
        </div>
    </div>
</section>

<jsp:include page="../../../footer.jsp"></jsp:include>
</body>
</html>
