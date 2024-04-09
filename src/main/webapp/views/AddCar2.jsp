

<main>
    <h1>Add a car</h1>
    <div class="steps">
        <span>Step 1: Basic</span>
        <span class="active">Step 2: Details</span>
        <span>Step 3: Pricing</span>
        <span>Step 4: Finish</span>
    </div>

    <!-- Form from previous code -->
    <div>
        <label for="mileage">Mileage:</label>
        <input type="text" id="mileage" name="mileage" required>
    </div>

    <div>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" placeholder="Search for an address">
        <select id="city" name="city">
            <option value="">City/Province</option>
            <!-- Add options for cities/provinces -->
        </select>
        <select id="district" name="district">
            <option value="">District</option>
            <!-- Add options for districts -->
        </select>
        <select id="ward" name="ward">
            <option value="">Ward</option>
            <!-- Add options for wards -->
        </select>
        <input type="text" id="street" name="street" placeholder="House number, Street">
    </div>

    <div>
        <div>
            <p>Additional functions:</p>
            <div>
                <input type="checkbox" id="bluetooth" checked />
                <label for="bluetooth">Bluetooth</label>
            </div>
            <div>
                <input type="checkbox" id="gps" />
                <label for="gps">GPS</label>
            </div>
            <div>
                <input type="checkbox" id="camera" />
                <label for="camera">Camera</label>
            </div>
            <div>
                <input type="checkbox" id="sunroof" checked />
                <label for="sunroof">Sun roof</label>
            </div>
            <div>
                <input type="checkbox" id="child-lock" checked />
                <label for="child-lock">Child lock</label>
            </div>
            <div>
                <input type="checkbox" id="child-seat" checked />
                <label for="child-seat">Child seat</label>
            </div>
            <div>
                <input type="checkbox" id="dvd" />
                <label for="dvd">DVD</label>
            </div>
            <div>
                <input type="checkbox" id="usb" />
                <label for="usb">USB</label>
            </div>
        </div>
    </div>

    <div>
        <label for="fuel-consumption">Fuel consumption:</label>
        <input type="text" id="fuel-consumption" name="fuel-consumption" placeholder="liter/100 km">
    </div>

    <div>
        <label for="description">Description:</label>
        <textarea id="description" name="description" placeholder="Description of your vehicle"></textarea>
    </div>

    <div>
        <div>
            <h3>Front</h3>
            <div>
                <img src="upload-icon.png" alt="Upload Icon">
                <p>Drag and drop OR Select File</p>
                <button>Select File</button>
            </div>
        </div>

        <div>
            <h3>Back</h3>
            <div>
                <img src="upload-icon.png" alt="Upload Icon">
                <p>Drag and drop OR Select File</p>
                <button>Select File</button>
            </div>
        </div>

        <div>
            <h3>Left</h3>
            <div>
                <img src="upload-icon.png" alt="Upload Icon">
                <p>Drag and drop OR Select File</p>
                <button>Select File</button>
            </div>
        </div>

        <div>
            <h3>Right</h3>
            <div>
                <img src="upload-icon.png" alt="Upload Icon">
                <p>Drag and drop OR Select File</p>
                <button>Select File</button>
            </div>
        </div>
    </div>

    <p>Please include full 4 images of your vehicle</p>
    <p>File type: jpg, jpeg, png, gif</p>

    <div>
        <button type="button" class="cancel">Cancel</button>
        <button type="submit" class="next">Next</button>
    </div>
    <!-- End of Form -->

</main>

