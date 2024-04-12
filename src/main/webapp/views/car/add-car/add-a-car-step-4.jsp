<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
<main style="padding: 20px; font-family: Arial, sans-serif; background-color: #f4f4f4;">
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
                <h3 style="margin-top: 0;"><span id="car-name"></span></h3>
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
                    <span id="car-price"></span>
                </div>
                <div style="margin-bottom: 10px;">
                    <span style="font-weight: bold;">Locations:</span>
                    <span id="car-location"></span>
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
        <button type="submit" class="submit" id="btn-add-a-car" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #4caf50; color: #fff;">Submit</button>
    </div>
</main>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>