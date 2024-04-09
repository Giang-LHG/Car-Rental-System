<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Rent a car today!</title>
    <jsp:include page="head.html"></jsp:include>
</head>
<body>
<header>
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
</header>
<main style="padding: 20px; font-family: Arial, sans-serif; background-color: #f4f4f4;">
    <h1>Add a Car</h1>
    <div class="steps" style="display: flex; margin-bottom: 20px;">
        <span style="padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f4f4f4; color: #333; margin-right: 10px;">Step 1: Basic</span>
        <span style="padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f4f4f4; color: #333; margin-right: 10px;">Step 2: Details</span>
        <span style="padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f4f4f4; color: #333; margin-right: 10px;">Step 3: Pricing</span>
        <span style="padding: 10px; border: 1px solid #4caf50; border-radius: 5px; background-color: #4caf50; color: #fff;">Step 4: Finish</span>
    </div>

    <div style="margin-bottom: 20px;">
        <label style="display: block; margin-bottom: 10px; font-weight: bold;">Preview:</label>
        <div style="display: flex; align-items: flex-start;">
            <div style="margin-right: 20px;">
                <button style="padding: 5px 10px; border: none; border-radius: 4px; cursor: pointer; background-color: #ccc; color: #333; margin-right: 10px;">&lt;</button>
                <div style="width: 300px; height: 200px; border: 1px solid #ccc; border-radius: 4px; overflow: hidden;">
                    <img src="placeholder.png" alt="Preview Image" style="width: 100%; height: 100%; object-fit: cover;">
                </div>
                <button style="padding: 5px 10px; border: none; border-radius: 4px; cursor: pointer; background-color: #ccc; color: #333; margin-left: 10px;">&gt;</button>
            </div>
            <div>
                <h3 style="margin-top: 0;">Nissan Navara El 2017</h3>
                <div style="margin-bottom: 10px;">
                    <span style="font-weight: bold;">Ratings:</span>
                    <span style="color: #ffc107;">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
                    <span>(No ratings yet)</span>
                </div>
                <div style="margin-bottom: 10px;">
                    <span style="font-weight: bold;">No. of Rides:</span>
                    <span>0</span>
                </div>
                <div style="margin-bottom: 10px;">
                    <span style="font-weight: bold;">Price:</span>
                    <span>900k/day</span>
                </div>
                <div style="margin-bottom: 10px;">
                    <span style="font-weight: bold;">Locations:</span>
                    <span>Cau Giay, Hanoi</span>
                </div>
                <div style="margin-bottom: 10px;">
                    <span style="font-weight: bold;">Status:</span>
                    <span style="color: green; font-weight: bold;">Available</span>
                </div>
            </div>
        </div>
    </div>

    <div style="margin-top: 20px; display: flex; justify-content: space-between;">
        <button type="button" class="cancel" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #ccc; color: #333; margin-right: 10px;">Cancel</button>
        <button type="submit" class="submit" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #4caf50; color: #fff;">Submit</button>
    </div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>