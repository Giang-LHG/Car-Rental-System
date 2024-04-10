<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Form</title>
</head>
<body>
<div style="max-width: 600px; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
    <form>
        <label style="display: block; margin-bottom: 5px;">Message:</label>
        <input type="text" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">

        <label style="display: block; margin-bottom: 5px;">Address:</label>
        <input type="text" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">

        <div style="display: flex;">
            <div style="flex: 1; margin-right: 10px;">
                <label style="display: block; margin-bottom: 5px;" for="city">City/Province:</label>
                <select id="city" name="city" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
                    <option value="">-- Choose City/Province --</option>
                    <!-- Add city options here -->
                </select>
            </div>
            <div style="flex: 1;">
                <label style="display: block; margin-bottom: 5px;" for="district">District:</label>
                <select id="district" name="district" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
                    <option value="">-- Choose District --</option>
                    <!-- Add district options here -->
                </select>
            </div>
        </div>

        <label style="display: block; margin-bottom: 5px;" for="ward">Ward:</label>
        <select id="ward" name="ward" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
            <option value="">-- Choose Ward --</option>
            <!-- Add ward options here -->
        </select>

        <label style="display: block; margin-bottom: 5px;" for="phone">Phone number (Optional):</label>
        <input type="text" id="phone" name="phone" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">

        <h3 style="margin: 20px 0 10px;">Additional functions:</h3>
        <div style="display: flex; flex-wrap: wrap;">
            <div style="flex: 1; margin-right: 10px;">
                <input type="checkbox" id="bluetooth" name="bluetooth" value="bluetooth">
                <label style="margin-left: 5px;" for="bluetooth">Bluetooth</label>
            </div>
            <div style="flex: 1; margin-right: 10px;">
                <input type="checkbox" id="GPS" name="GPS" value="GPS">
                <label style="margin-left: 5px;" for="GPS">GPS</label>
            </div>
            <div style="flex: 1;">
                <input type="checkbox" id="camera" name="camera" value="camera">
                <label style="margin-left: 5px;" for="camera">Camera</label>
            </div>
        </div>
        <div style="display: flex; flex-wrap: wrap;">
            <div style="flex: 1; margin-right: 10px;">
                <input type="checkbox" id="sun-roof" name="sun-roof" value="sun-roof">
                <label style="margin-left: 5px;" for="sun-roof">Sun roof</label>
            </div>
            <div style="flex: 1; margin-right: 10px;">
                <input type="checkbox" id="DVD" name="DVD" value="DVD">
                <label style="margin-left: 5px;" for="DVD">DVD</label>
            </div>
            <div style="flex: 1;">
                <input type="checkbox" id="USB" name="USB" value="USB">
                <label style="margin-left: 5px;" for="USB">USB</label>
            </div>
        </div>
        <div style="display: flex; flex-wrap: wrap;">
            <div style="flex: 1; margin-right: 10px;">
                <input type="checkbox" id="child-seat" name="child-seat" value="child-seat">
                <label style="margin-left: 5px;" for="child-seat">Child seat</label>
            </div>
            <div style="flex: 1;">
                <input type="checkbox" id="child-lock" name="child-lock" value="child-lock">
                <label style="margin-left: 5px;" for="child-lock">Child lock</label>
            </div>
            <!-- Add other checkboxes here -->
        </div>


        <h3 style="margin: 20px 0 10px;">Fuel consumption:</h3>
        <input type="text" id="fuel-consumption" name="fuel-consumption" placeholder="Enter 100 km" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">

        <h3 style="margin: 20px 0 10px;">Description:</h3>
        <textarea id="description" name="description" rows="5" style="width: calc(100% - 22px); padding: 10px; margin: 5px 0 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></textarea>

        <h3 style="margin: 20px 0 10px;">Images:</h3>
        <p>Please include 4-6 images of your service in their .jpg, .png, .gif format.</p>
        <input type="file" id="front-image" name="front-image" accept="image/*" style="margin-bottom: 10px;"><label for="front-image">Front</label>
        <input type="file" id="back-image" name="back-image" accept="image/*" style="margin-bottom: 10px;"><label for="back-image">Back</label>
        <input type="file" id="left-image" name="left-image" accept="image/*" style="margin-bottom: 10px;"><label for="left-image">Left</label>
        <input type="file" id="right-image" name="right-image" accept="image/*" style="margin-bottom: 10px;"><label for="right-image">Right</label>

        <input type="submit" value="Submit" style="background-color: #4CAF50; color: white; padding: 14px 20px; margin-top: 20px; border: none; border-radius: 4px; cursor: pointer; width: 100%; font-size: 16px;">
    </form>
</div>
</body>
</html>
